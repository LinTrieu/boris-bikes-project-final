require './lib/dockingstation'
require './lib/bike'

describe DockingStation do
  it 'releases bike from docking station' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_an_instance_of(Bike)
  end

  it 'expects the bike to be working' do
    docking_station = DockingStation.new
    released_bike = docking_station.release_bike
    expect(released_bike).to be_working
  end

  it 'can dock a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    output = docking_station.dock(bike)
    expect(output).to include(bike)
  end

    # it 'returns docked bikes' do
    #   docking_station = DockingStation.new
    #   bike = Bike.new
    #   output = docking_station.dock(bike)
    #   expect(output).to eq(dock)
    # end
end
