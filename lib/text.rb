require 'rubygems'
require 'twilio-ruby'

module Text

	def time
		time_plus_one_hour = Time.now + 1*60*60
		time_plus_one_hour.strftime('%H:%M')
	end


end