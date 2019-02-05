require 'rails_helper'

RSpec.describe Like, type: :model do
  before(:each) do
    @user = User.create(first_name: "John", last_name: "Doe", age: 20, email: "blablabla@cool.fr", description: "helloooooooooo woooooooorld",city: @city)
    @like = Like.create(user: @user)
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@like).to be_a(Like)
    end
    
    it "is valid with valid attributes" do
      expect(@like).to be_valid
    end
  end
end
