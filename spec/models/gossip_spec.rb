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
  end
end
