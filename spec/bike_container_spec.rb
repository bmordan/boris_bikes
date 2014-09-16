require 'bike_container'
require 'bike'

class ContainerHolder; include BikeContainer; end

describe BikeContainer  do

  let(:bike) { Bike.new }
  let(:holder) { ContainerHolder.new }

  it "should accept a bike" do
  	# we expect the holder to have 0 bikes
  	expect(holder.bike_count).to eq(0)
  	#let's dock a bike into the holder
  	holder.dock(bike)
  	# now we expect the holder to have 1 bike
  	expect(holder.bike_count).to eq(1)
  end

  it "should throw an error if no bikes are there" do
  	expect(holder.bike_count).to eq(0)
  	expect( lambda {holder.release(bike)} ).to raise_error(RuntimeError)
  end

  it "should throw an error if no bike is passed" do
  	3.times{holder.dock(bike)}
  	expect(holder.bike_count).to eq(3)
  	expect( lambda {holder.release()} ).to raise_error(ArgumentError)
  end

  it "should throw error if the argument is not a bike at all" do
  	3.times{holder.dock(bike)}
    bike = "James"
    expect( lambda {holder.release(bike)}).to raise_error(RuntimeError)
  end

  it "Should throw an error if no (bike) is passed to dock()" do
    expect( lambda {holder.dock()}).to raise_error(ArgumentError)
  end



end