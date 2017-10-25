require "docking_station"


describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it "is expected to create a new bike" do
    expect(DockingStation.new.release_bike).to be_an_instance_of(Bike)
  end
  it "expects the bike to be working" do
    expect(Bike.new.working?).to eq true
  end
  it "allows bikes to be docked in stations" do
    expect(DockingStation.new).to respond_to(:docking).with(1).argument
  end
  it "see what's in the docking station" do
    expect(DockingStation.new.inventory).to eq(@bike_inventory)
  end
end
