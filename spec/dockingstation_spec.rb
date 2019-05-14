require './lib/dockingstation'
require './lib/bike'

describe DockingStation do 
  it 'can release bike from docking station' do
    input = DockingStation.new
    expect(input.release_bike).to be_an_instance_of(Bike)
  end

  it 'expects the bike to be working' do
    input = DockingStation.new
    released_bike = input.release_bike
    expect(released_bike.working?).to eq(true)
  end

end