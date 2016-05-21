class SessionsController < ApplicationController
  def new
  end

  def create
    # authenticate the user
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/sign_in'
  end

end
