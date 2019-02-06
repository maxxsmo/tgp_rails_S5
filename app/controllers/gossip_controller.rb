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
    @gossip = Gossip.find(params["id"])
  end
  
  def show
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params["id"])
    if  @gossip.update(title: params["title"], content: params["content"])
      redirect_to '/home', notice: "Gossip successfully modified! "
    else 
      render 'edit'
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to '/home'
  end

  
end
