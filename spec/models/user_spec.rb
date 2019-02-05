require 'rails_helper'

RSpec.describe User, type: :model do
  
  before(:each) do
    @city = City.create(name: "Paris")
    @user = User.create(first_name: "John", last_name: "Doe", age: 20, email: "blablabla@cool.fr", description: "helloooooooooo woooooooorld",city: @city)
  end

  context "associations" do

    describe "gossips" do
      it "should have many gossips" do
        gossip = Gossip.create(user: @user, title: "ceci est un titre", content: "ceci est un contenu")
        expect(@user.gossips.include?(gossip)).to eq(true)
      end
    end

    describe "likes" do
      it "should have many likes" do
        like = Like.create(user: @user)
        expect(@user.likes.include?(like)).to eq(true)
      end
    end

  end
  

  context "validation" do

    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
      expect(@user).to be_valid
    end
    
    describe "#first_name" do
      it "should not be valid without first_name" do
        bad_user = User.create(last_name: "Doe")
        expect(bad_user).not_to be_valid
        # test très sympa qui permet de vérifier que la fameuse formule user.errors retourne bien un hash qui contient une erreur concernant le first_name. 
        expect(bad_user.errors.include?(:first_name)).to eq(true)
      end
    end

    describe "#last_name" do
      it "should not be valid without last_name" do
        bad_user = User.create(first_name: "John")
        expect(bad_user).not_to be_valid
        expect(bad_user.errors.include?(:last_name)).to eq(true)
      end
    end


  end

end
