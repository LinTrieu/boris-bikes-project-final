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
    expect(output).to eq(1)
  end

  it 'can iteract with a method called total' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station).to respond_to(:total)
  end

  it 'can add bikes to the docking station total' do
    #arrange
    docking_station = DockingStation.new
    bike = Bike.new
    #assert
    output = 5.times {docking_station.dock(bike)}
    #assertion
    expect(output).to eq(5)
  end

  it 'expects docking station to respond to release bike method' do
    #arrange
    docking_station = DockingStation.new 
    #assertion
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'can remove bike from the docking station total' do
    docking_station = DockingStation.new
    bike = Bike.new
    output = 2.times {docking_station.release_bike}
    expect(output).to eq(-2)
  end

end
