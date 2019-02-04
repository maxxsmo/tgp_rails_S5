require 'rails_helper'

RSpec.describe Tag, type: :model do
  
  before(:each) do
    @tag = Tag.create(title: "salut")
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@tag).to be_a(Tag)
    end
    
    it "is valid with valid attributes" do
      expect(@tag).to be_valid
    end
  end
end
