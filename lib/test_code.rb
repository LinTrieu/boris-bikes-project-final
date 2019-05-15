require_relative 'dockingstation'
require_relative 'bike'

dockingstation = DockingStation.new
bike = dockingstation.release_bike
dockingstation.dock(bike)
dockingstation.dock(bike) # => Docking bike, we're returning bike PASSES
puts dockingstation.total
