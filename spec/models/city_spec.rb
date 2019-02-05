require 'rails_helper'

RSpec.describe City, type: :model do
  before(:each) do
    @city = City.create(name: "Paris", zip_code: 57000)
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@city).to be_a(City)
    end
    
    it "is valid with valid attributes" do
      expect(@city).to be_valid
    end

    describe "#name" do
      it "should not be valid without name" do
        bad_city = City.create(name: "John")
        expect(bad_city).not_to be_valid
        expect(bad_city.errors.include?(:zip_code)).to eq(true)
      end
    end

    describe "#zip_code" do
      it "should not be valid without name" do
        bad_city = City.create(zip_code: 01003)
        expect(bad_city).not_to be_valid
        expect(bad_city.errors.include?(:name)).to eq(true)
      end
    end

  end
end
