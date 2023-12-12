require "rspec"
require_relative "../galaxy"

describe Galaxy do
  context "when created with a name and number of stars" do
    it "should hold the correct name and star count" do
      galaxy = Galaxy.new("Milky Way", 100_000_000_000)
      expect(galaxy.name).to eq("Milky Way")
      expect(galaxy.number_of_stars).to eq(100_000_000_000)
    end
  end

  context "when asking for a description" do
    it "returns a string containing its name and star count" do
      galaxy = Galaxy.new("Andromeda", 1_000_000_000_000)
      expect(galaxy.description).to eq("Andromeda contains approximately 1000000000000 stars.")
    end
  end
end
