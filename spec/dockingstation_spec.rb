require './lib/dockingstation'

describe DockingStation do 
  it 'can release bike from docking station' do
    input = DockingStation.new
    expect(input).respond_to?(:release_bike)
  end

end