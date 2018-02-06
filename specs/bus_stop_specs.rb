require('minitest/autorun')
require_relative('../bus_stop')
require_relative('../person')

class BusStopTest < MiniTest::Test
  def setup
    @person1 = Person.new("Dan", 30)
    @person2 = Person.new("Graham", 35)
    @stop1 = BusStop.new("stop 1")

  end

  def test_check_bus_stop_name
    assert_equal("stop 1", @stop1.name())
  end

  def test_adding_to_queue
    @stop1.add_to_queue(@person1)
    assert_equal(1, @stop1.queue.count)
  end
end
