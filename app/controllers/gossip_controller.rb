class GossipController < ApplicationController
  
  

  def index
  end

  def new
    @gossip = Gossip.new 
  end

  def create
    
    @gossip = Gossip.new(title: params["title"], content: params["content"], user_id: 8)
    if  @gossip.save
      redirect_to '/home', notice: "Gossip successfully created! "
    else 
      render 'new'
    end
  end
  
  

  def edit
  end
  
  def show
    @gossip_id = Gossip.find(params["id"])
  end

  def update
  end

  def destroy
  end

  def gossip_author
    @author = User.find(params["user_id"])
  end
end
