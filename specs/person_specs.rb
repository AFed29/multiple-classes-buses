require('minitest/autorun')
require_relative('../person')

class PersonTest < MiniTest::Test

  def setup
    @passenger = Person.new("Dan", 30)
  end

  def test_get_person_name
    assert_equal("Dan", @passenger.name())
  end

  def test_get_person_age
    assert_equal(30, @passenger.age())
  end

end
