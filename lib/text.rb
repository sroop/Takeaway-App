require 'rubygems'
require 'twilio-ruby'

module Text

	def time
		time_plus_one_hour = Time.now + 1*60*60
		time_plus_one_hour.strftime('%H:%M')
	end

	def send_text
		account_sid = 'ACc36ee9ccdc509580db7161dd88669a8e'
		auth_token = '861bfe0a7073153f9f735baf1145adf1'
		@client = Twilio::REST::Client.new account_sid, auth_token

		message = @client.account.sms.messages.create(
			:body => "Thank you for your order! It will be delivered to you by #{time}.",
			:to => "+447967764771",
			:from => "+441202835749")
		puts message.sid
	end

end
