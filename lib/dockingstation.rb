require_relative 'bike'

class DockingStation

  attr_reader :bike , :total

  def initialize
    @total = 0
  end

  def release_bike
    if @total < 0   
      raise "There are no bikes available"
    else 
      @total -= 1     
      Bike.new
    end
  end

  def dock(bike)
    @bike = bike
    @total += 1
  end

end
