require 'httparty'
require 'json'

class NasaFeedService

	include HTTParty

	base_uri 'https://api.nasa.gov'

	def get_nasa_feed_response(start_date, end_date, api_key)
		@nasa_feed_data = JSON.parse(self.class.get("/neo/rest/v1/feed?start_date=#{start_date}&end_date=#{end_date}&api_key=#{api_key}").body)
	end

	def get_class_from_body_response
		@nasa_feed_data.class
	end

end