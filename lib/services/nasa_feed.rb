require 'httparty'
require 'json'

class NasaFeedService

	include HTTParty

	base_uri 'api link'

	def get_nasa_feed_response(name)
		@nasa_feed_data = JSON.parse(self.class.get("link")).body)
	end

end