class ApplicationController < ActionController::Base
  protect_from_forgery

#  def user_authenticated?
#	  unless session[:logged_in] == true
#	    flash[:notice] = "You must be logged in to perform this action"
#	    redirect_to widgets_url
#	    return false
#	  end
# 	end
#	 helper_method :user_authenticated?

end
