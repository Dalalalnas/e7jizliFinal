class SessionsController < ApplicationController
 
  def create
  user = User.find_by_fname(params[:fname])
  if user && user.authenticate(params[:password])
    session[:user_idd] = user.id 
	redirect_to user   #change this.
	else
	flash.now[:error] = "INVALID name/password...."
	render 'new'

  end
end

  def destroy
  if signed_in?
          session[:user_id] = nil
   else   flash[:notice] = "You need to sign in first"
   end
      redirect_to signin_path
	  end

def new 
end
end