require_relative 'bike'

class DockingStation

  attr_accessor :total , :capacity 

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @total = []
    @capacity = capacity
    @bikes = Bike.new
  end

  def release_bike
    fail "No bikes available" if empty? 
    raise "Broken bike!" if broke?
    @total.pop()
    Bike.new
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @total.push(bike)
  end

  private

  def full?
    @total.count >= DEFAULT_CAPACITY
  end

  def empty?
    @total.empty? 
  end

  def broke?
    @bikes.broken == true
  end

  # @bikes.report_broken == true >> breaks everything
  # @bikes.broken == true >> does not stop broken

end