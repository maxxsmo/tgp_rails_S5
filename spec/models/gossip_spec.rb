require 'rails_helper'

RSpec.describe Gossip, type: :model do
  before(:each) do
    @user = User.create
    @gossip = Gossip.create(title: "hell yeah", content: "ezrlqjgmregj", user: @user )
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@gossip).to be_a(Gossip)

    end
    
    it "is valid with valid attributes" do
      expect(@gossip).to be_valid
    end

    describe "#title" do
      it "should not be valid without content" do
        bad_gossip = Gossip.create(title: "ceci est un titre")
        expect(bad_gossip).not_to be_valid
        # test très sympa qui permet de vérifier que la fameuse formule user.errors retourne bien un hash qui contient une erreur concernant le first_name. 
        expect(bad_gossip.errors.include?(:content)).to eq(true)
      end
    end

    describe "#content" do
      it "should not be valid without title " do
        bad_gossip = Gossip.create(content: "Ceci est un content")
        expect(bad_gossip).not_to be_valid
        # test très sympa qui permet de vérifier que la fameuse formule user.errors retourne bien un hash qui contient une erreur concernant le first_name. 
        expect(bad_gossip.errors.include?(:title)).to eq(true)
      end
    end

  end
end
