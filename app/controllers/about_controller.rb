class AboutController < ApplicationController

  def company
  	if params[:year]
  		@year = params[:year]
  	else
  			@year = 1888
  	end
  end

  def contact
  end

  def companie
  	flash[:notice]='wrong place silly head!'
  	redirect_to :controller => 'about', :action => 'company'
  end

  def supervisors
  	@supervisors = ["Bob Jones", "Jodi Bell", "Benjamin Krause", "Mark Fritz"]
  end

  def managers
  	@managers = ["Aaron Hillegass", "Emily Herman", "Jaye Liptak", "Stacy Moore", "Jason Russell", "Jami Sieder"]
  end

  def special
  	@special_widget = Widget.find(:last)
  end

  def more_info

  end

  def thank_you
  	@full_name = params[:full_name]
  	@color = params[:color]
  end
end
