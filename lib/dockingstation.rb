require_relative 'bike'

class DockingStation

  attr_reader :bikes , :total

  def initialize
    @total = []
  end


  def release_bike
    raise "There are no bikes available" if @total.empty? # Guard condition
    @total.pop()
    Bike.new
  end

  def dock(bike)
    raise "Storage full" if @total.length >= 20
    @bikes = bike
    @total.push(bike)
  end

end
