require 'docking_station'

describe DockingStation do

  let(:station) { DockingStation.new(:capacity => 12) }

  it "should allow setting default capacity on init" do
  	expect(station.capacity).to eq(12)
  end
end