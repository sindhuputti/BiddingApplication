class SessionsController < ApplicationController
  def new
  end
  
 
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password]) && !user.admin
       log_in user
       redirect_to user
    else if user && user.authenticate(params[:session][:password]) && user.admin
       log_in user
       redirect_to users_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
    end
  end
  
  
  def destroy
      session.delete(:user_id)
      redirect_to root_url
  end
  
end