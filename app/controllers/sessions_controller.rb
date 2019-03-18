class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(email: params[:email]).first

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = 'Logged in'
      redirect_to root_path
    else
      flash[:error] = 'Wrong hun'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
   flash[:notice] = "Logged out"
   redirect_to root_path
  end

end
