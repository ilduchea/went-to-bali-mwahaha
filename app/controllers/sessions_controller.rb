class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      flash[:notice] = "You've signed in."
      session[:user_id] = user.id
      # if condition
      #   session[:order_id] = user.order_id
      # else
      #
      # end
      redirect_to '/'
    else
      flash[:alert] = "There was a problem signing in. Please try again."
      redirect_to '/sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
    # session[:order_id] = nil
    flash[:notice] = "You've signed out."
    redirect_to root_path
  end

end
