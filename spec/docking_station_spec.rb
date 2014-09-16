require 'docking_station'
require 'bike'

describe DockingStation do

  let(:station) { DockingStation.new(:capacity => 12) }

  it "should allow setting default capacity on init" do
  	expect(station.capacity).to eq(12)
  end

  it "should retrun true if no bikes in dock" do
    expect(station.empty?).to eq(true)
  end

  it "should return false if bikes in the dock" do
    bike = Bike.new
    station.dock(bike)
    expect(station.empty?).to eq(false)
  end

  it "docking station should let us know what bikes bikes are available" do
  	expect(station.available_bikes).to be_a(Array)
  end
end