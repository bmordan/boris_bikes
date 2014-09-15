require 'bike'

describe Bike do

	let(:bike) {Bike.new}

	it "should not be broken after its been created" do
	  
	  expect(bike).not_to be_broken
	end

	it "should be able to break" do
	  bike.break!
	  expect(bike).to be_broken
	end

	it "should be fixable" do
		bike.break!
		bike.fix!
		expect(bike).to_not be_broken
	end
end 