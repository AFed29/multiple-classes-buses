require('minitest/autorun')
require_relative('../bus')

class BusTest < MiniTest::Test
  def setup()
    @bus = Bus.new(16, "Colinton")
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

end
