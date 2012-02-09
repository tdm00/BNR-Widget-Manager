class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_login, :except => [:index, :show, :new, :create, :login, :authenticate]

  private

  def check_login
    if session[:logged_in] == true
      return true
    else
      flash[:notice] = "You must be logged in to perform this action"
      redirect_to widgets_path
      return false
    end
  end

  def user_authenticated?
    session[:logged_in] == true
  end

  helper_method :user_authenticated?


end
