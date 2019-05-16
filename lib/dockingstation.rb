require_relative 'bike'

class DockingStation

  attr_reader :bikes , :total

  def initialize
    @total = 0
  end


  def release_bike
    raise "There are no bikes available" if @total <= 0 # Guard condition
    @total -= 1
    Bike.new
  end

  def dock(bike)
    raise "Storage full" if @total >= 1
    @bikes = bike
    @total += 1
  end

end
