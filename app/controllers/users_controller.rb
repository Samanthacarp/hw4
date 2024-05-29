class UsersController < ApplicationController
 

  def index
    @users= user.all
  end
 
  def new
  end

  def create
    @user = User.new
    @user["username"] = params["username"]
    @user["email"] = params["email"]
    @user["password"] = params["password"]
    @user.save
    redirect_to "/users/#{@user["id"]}"
  end
end
