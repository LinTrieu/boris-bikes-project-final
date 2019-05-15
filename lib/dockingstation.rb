# require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @total = 0
  end
  
  def release_bike
    bike = Bike.new
    return bike
  end

  def dock(bike)
    @bike = bike
    @total += 1
  end

  def total
    puts @total
  end

end
