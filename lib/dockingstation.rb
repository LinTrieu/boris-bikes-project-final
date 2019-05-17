require_relative 'bike'

class DockingStation

  attr_reader :bikes , :total

  def initialize
    @total = []
  end

  def release_bike
    fail "There are no bikes available" if @total.empty? 
    @total.pop()
    Bike.new
  end

  def dock(bike)
    fail 'Docking station full' if @total.length >= 20
    @total.push(bike)
  end

end
