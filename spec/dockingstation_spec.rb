require './lib/dockingstation'
require './lib/bike'

describe DockingStation do

  let(:docking_station) {DockingStation.new}
  let(:bike) {Bike.new}

  it 'releases bike from docking station' do
    docking_station.dock(bike) # => total num of bikes should be 1
    expect(docking_station.release_bike).to be_an_instance_of(Bike)
  end

  it 'expects the bike to be working' do
    docking_station.dock(bike) # => total num of bikes should be 1
    output = docking_station.release_bike
    expect(output).to be_working
  end


  it 'can dock a bike' do
    output = docking_station.dock(bike)
    expect(output).to eq(1)
  end

  it 'can iteract with a method called total' do
    expect(docking_station).to respond_to(:total)
  end

  it 'can add bikes to the docking station total' do
    #arrange
    #assert
    output = 1.times {docking_station.dock(bike)}
    #assertion
    expect(output).to eq(1)
  end

  it 'expects docking station to respond to release bike method' do
    #arrange
    #assertion
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'can remove bike from the docking station total' do
    docking_station.dock(bike)
    docking_station.release_bike
    expect(docking_station.total).to eq(0)
  end

  it 'can raise an error when there are no bikes docked' do
    docking_station.dock(bike)
    docking_station.release_bike
    expect{docking_station.release_bike}.to raise_error("There are no bikes available")
  end

  it 'cannot accept more than 1 docked bike' do
    docking_station.dock(bike) # => should be 2
    expect{docking_station.dock(bike)}.to raise_error("Storage full")
  end

end
