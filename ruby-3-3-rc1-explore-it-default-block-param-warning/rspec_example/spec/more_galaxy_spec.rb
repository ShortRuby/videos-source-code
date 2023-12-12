require "rspec"
require_relative "../galaxy"

describe Galaxy do
  subject { Galaxy.new("Milky Way", 100_000_000_000).stars }

  context "When there are no known stars" do
    it
  end
end
