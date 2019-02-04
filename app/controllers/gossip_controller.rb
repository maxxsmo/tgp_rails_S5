class GossipController < ApplicationController
  def gossip_page
    @gossip_id = Gossip.find(params["id"])
  end

  def gossip_author
    @author = User.find(params["user_id"])
  end
end
