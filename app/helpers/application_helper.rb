module ApplicationHelper

	# Given a _time_, returns a short date in the format of:
	#
	#   Oct 22 2006
	#
	def short_date( time )
	  return if time.nil?
	  time.strftime("%b %d %Y")
	end

	# Create your own pretty_date helper that displays the 
	# time_ago_in_words, only if the widget is less than 
	# 2 days old. If it's not, display a short date, like Jan 3 or Mar 6
	def my_date ( time )
		return if time.nil?
		#past_day = -2.day.from_now
		if time > -2.day.from_now
			return time_ago_in_words(time)
		else
			return time.strftime("%b %d %Y")
		end
	end

end
