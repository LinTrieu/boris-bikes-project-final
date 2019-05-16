require './lib/dockingstation'
require './lib/bike'

describe DockingStation do

  let(:docking_station) {DockingStation.new}
  let(:bikes) {Bike.new}

  it 'releases bike from docking station' do
    docking_station.dock(bikes) # => total num of bikes should be 1
    docking_station.release_bike
    expect(docking_station.total.length).to eq(0)
  end

  it 'expects the bike to be working' do
    docking_station.dock(bikes) # => total num of bikes should be 1
    output = docking_station.release_bike
    expect(output).to be_working
  end


  it 'can dock a bike' do
    docking_station.dock(bikes)
    expect(docking_station.total.length).to eq(1)
  end

  it 'can iteract with a method called total' do
    expect(docking_station).to respond_to(:total)
  end

  it 'can add bikes to the docking station total' do
    #arrange
    #assert
    output = 1.times {docking_station.dock(bikes)}
    #assertion
    expect(output).to eq(1)
  end

  it 'expects docking station to respond to release bike method' do
    #arrange
    #assertion
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'can remove bike from the docking station total' do
    docking_station.dock(bikes)
    docking_station.release_bike
    expect(docking_station.total.length).to eq(0)
  end

  it 'can raise an error when there are no bikes docked' do
    docking_station.dock(bikes)
    docking_station.release_bike
    expect{docking_station.release_bike}.to raise_error("There are no bikes available")
  end

  it 'cannot accept more than 20 docked bike' do
    expect{21.times{docking_station.dock(bikes)}}.to raise_error("Storage full")
  end

end
