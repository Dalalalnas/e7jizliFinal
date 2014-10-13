class ApplicationController < ActionController::Base
  protect_from_forgery

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  include ApplicationHelper
  def authorise 
     unless signed_in?
	 store_location
	 redirect_to signin_path, :notice => "Please Sign in to access this page."
	 end
	 end
  
  def store_location
      session[:return_to] = request.fullpath
	end
	end
  
