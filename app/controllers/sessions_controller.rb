class SessionsController < ApplicationController
  
  def welcome
  end

  def new
  end

  def create
    user = User.find(params[:user][:id])
      log_in user
      redirect_to user 
  end

  def destroy
  	session.clear
  	@user = nil
  	redirect_to '/'
  end
end
