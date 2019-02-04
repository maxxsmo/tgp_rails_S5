require 'rails_helper'

RSpec.describe City, type: :model do
  before(:each) do
    @city = City.create(name: "Paris")
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@city).to be_a(City)
    end
    
    it "is valid with valid attributes" do
      expect(@city).to be_valid
    end
  end
end
