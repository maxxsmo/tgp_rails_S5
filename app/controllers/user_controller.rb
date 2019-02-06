class UserController < ApplicationController
  def index
  end

  def show
    @author = User.find(params["id"])
  end

  def update
  end

  def new
  end

  def create
  end

  def delete
  end
end
