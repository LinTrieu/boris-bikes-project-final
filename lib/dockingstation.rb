require_relative 'bike'

class DockingStation

  attr_reader :bikes , :total

  def initialize
    @total = []
  end

  def release_bike
    fail "No bikes available" if empty? 
    @total.pop()
    Bike.new
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @total.push(bike)
  end

  private

  def full?
    @total.count >= 20
  end

  def empty?
    @total.empty? 
  end




end
