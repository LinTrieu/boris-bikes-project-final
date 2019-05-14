require './lib/dockingstation'

describe DockingStation do 
  it 'can release bike from docking station' do
    input = DockingStation.new
    expect(input.release_bike).to be_an_instance_of(Bike)
  end

  it 'expects the bike to be working' do

  end

end