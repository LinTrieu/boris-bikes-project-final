require_relative 'bike'

class DockingStation

  def initialize
    @dock = []
  end

  def release_bike
   Bike.new
  end

  def dock(bike)
    @dock.push(bike)
  end
end
