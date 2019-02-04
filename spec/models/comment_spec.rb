require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do
    @user = User.create
    @gossip = Gossip.create
    @comment = Comment.create(content: "Paris", user: @user, gossip: @gossip)
  end

  context "validation" do
    
    it "is valid with valid attributes" do
      expect(@comment).to be_a(Comment)
    end

    it "is valid with valid attributes" do
      expect(@comment).to be_valid
    end

  end
end
