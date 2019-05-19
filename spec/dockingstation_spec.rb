require './lib/dockingstation'
require './lib/bike'
require 'pry'

describe DockingStation do

  let(:docking_station) {DockingStation.new}
  let(:bikes) {Bike.new}

  it 'releases bike from docking station' do
    docking_station.dock(bikes) # => total num of bikes should be 1
    docking_station.release_bike
    expect(docking_station.total.count).to eq(0)
  end

  it 'expects the bike to be working' do
    docking_station.dock(bikes) # => total num of bikes should be 1
    output = docking_station.release_bike
    expect(output).to be_working
  end

  it 'can dock a bike' do
    docking_station.dock(bikes)
    expect(docking_station.total.count).to eq(1)
  end

  it 'can iteract with a method called total' do
    expect(docking_station).to respond_to(:total)
  end

  it 'can add bikes to the docking station total' do
    output = 1.times {docking_station.dock(bikes)}
    expect(output).to eq(1)
  end

  it 'expects docking station to respond to release bike method' do
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'can remove bike from the docking station total' do
    docking_station.dock(bikes)
    docking_station.release_bike
    expect(docking_station.total.count).to eq(0)
  end

  it 'raises an error when no bikes are available' do
    docking_station.dock(bikes)
    docking_station.release_bike
    expect{docking_station.release_bike}.to raise_error "No bikes available"
  end

  it 'raises an error when capacity is full' do
    docking_station.capacity.times {docking_station.dock(bikes)}
    expect{docking_station.dock(bikes)}.to raise_error 'Docking station full'
  end

  it 'instantiates the class' do
    expect(docking_station).to be_an_instance_of(DockingStation)
  end

  it 'has a default capacity if no class arguments are passed' do
    expect(docking_station.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end

  it 'instantiates the class with 1 argument' do
    expect(DockingStation).to receive(:new).with(15)
    DockingStation.new(15)
  end

  it 'raises an error if user tries to release a broken bike' do
    bad_bike = bikes.report_broken
    docking_station.dock(bad_bike)
    expect{docking_station.release_bike}.to raise_error "Broken bike!"
  end
end