require 'bike'

describe Bike do
    it 'check if bike is working?' do
        bike = Bike.new
        expect(bike).to respond_to(:working?)
    end
end