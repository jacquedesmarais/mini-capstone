class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      flash[:success] = "You logged into your fishtank!"
      redirect_to '/'
    else
      flash[:warning] = "Invalid username or password."
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You are out of your fishtank"
    redirect_to '/login'
  end

end
