class Bus
  attr_reader(:number, :destination, :passengers)

  def initialize(number, destination, passengers = [])
    @number = number
    @destination = destination
    @passengers = passengers
  end

  def drive
    return "Brum brum"
  end

  def number_of_passengers()
    return @passengers.length()
  end

  def pick_up(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.delete_if { |passenger| passenger == person }
  end

  def empty()
    @passengers.clear()
  end

  def pick_up_from_stop(stop)
    @passengers.concat(stop.queue)
  end

end
