require 'bike'

describe Bike do

	let(:bikes) {Bike.new}

    it 'check if bike is working?' do
        expect(bikes).to respond_to(:working?)
    end

		it 'can be reported broken' do
			bikes.report_broken
			expect(bikes).to be_broken
		end
		
end