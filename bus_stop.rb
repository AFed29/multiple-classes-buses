class BusStop

  attr_reader(:name, :queue)

  def initialize(name)
    @name = name
    @queue = []
  end

  def add_to_queue(person)
    @queue.push(person)
  end

end
