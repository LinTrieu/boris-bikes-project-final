require_relative 'dockingstation'
require_relative 'bike'

dockingstation = DockingStation.new
bike = Bike.new
2.times{dockingstation.dock(bike)}
# dockingstation.dock(bike)
puts dockingstation.total
