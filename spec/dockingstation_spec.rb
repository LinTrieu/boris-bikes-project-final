require './lib/dockingstation'

describe DockingStation do 
  it 'can release bike from docking station' do
  
  expect(DockingStation).to respond_to(release_bike)
  end
end