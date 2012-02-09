class LoginController < ApplicationController
  def login

  end

  def logout
  		session[:logged_in] = false
  		flash[:notice] = "You have now been logged out"
    redirect_to widgets_url
  end

  def authenticate
  	if params[:password] == "bignerdranch"
  		session[:logged_in] = true
    redirect_to widgets_url
   else
   	flash[:notice] = "Sorry Charlie, wrong password, try again!"
   	render action: "login"
   end
  end
end