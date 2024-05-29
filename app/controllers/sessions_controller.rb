class SessionsController < ApplicationController
  def new
  end

  def create
    flash["notice"] = "Welcome."
    redirect_to "/users"
  end

  def destroy
    redirect_to "/logout"
  end
end
