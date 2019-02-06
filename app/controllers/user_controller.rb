class UserController < ApplicationController
  def index
  end

  def show
    @author = User.find(params["id"])
    puts '$' * 60
    puts '$' * 60
    puts params
    puts '$' * 60
    puts '$' * 60
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
