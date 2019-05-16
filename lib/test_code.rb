require_relative 'dockingstation'
require_relative 'bike'

dockingstation = DockingStation.new
bike = Bike.new
dockingstation.dock(bike)
dockingstation.dock(bike)
puts dockingstation.total
