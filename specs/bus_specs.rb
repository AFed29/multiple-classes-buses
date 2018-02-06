require('minitest/autorun')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusTest < MiniTest::Test
  def setup()

    @person1 = Person.new("Alex", 26)
    @person2 = Person.new("Jane", 41)
    @person3 = Person.new("Kate", 21)

    @bus = Bus.new(16, "Colinton", [@person1, @person2])
  end

  def test_get_bus_number
    number = @bus.number()
    assert_equal(16, number)
  end

  def test_get_bus_destination
    destination = @bus.destination()
    assert_equal("Colinton", destination)
  end

  def test_bus_drive
    assert_equal("Brum brum", @bus.drive())
  end

  def test_number_of_passengers_on_bus
    number_of_passengers = @bus.number_of_passengers()
    assert_equal(2, number_of_passengers)
  end

  def test_pick_up_passenger
    @bus.pick_up(@person3)
    number_of_passengers = @bus.number_of_passengers()
    assert_equal(3, number_of_passengers)
    passengers = @bus.passengers()
    assert_equal(@person3, passengers[2])
  end

  def test_drop_off_passenger
    @bus.drop_off(@person2)
    number_of_passengers = @bus.number_of_passengers()
    assert_equal(1, number_of_passengers)
    passengers = @bus.passengers()
    assert_equal([@person1], passengers)
  end

  def test_empty_bus
    @bus.empty()
    assert_equal(0, @bus.number_of_passengers())
  end

  def test_pick_up_from_stop
    stop1 = BusStop.new("stop 1")
    stop1.add_to_queue(@person3)
    @bus.pick_up_from_stop(stop1)
    assert_equal(3, @bus.number_of_passengers)
  end
end
