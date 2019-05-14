require './lib/dockingstation'
require './lib/bike'

describe DockingStation do
  it 'can release bike from docking station' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_an_instance_of(Bike)
  end

  it 'expects the bike to be working' do
    docking_station = DockingStation.new
    released_bike = docking_station.release_bike
    expect(released_bike.working?).to eq(true)
  end

  it 'expects to return the bike to docking station' do
    docking_station = DockingStation.new
    expect(docking_station.return_bike).to eq(true)
  end

end
