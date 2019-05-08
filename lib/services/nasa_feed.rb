require 'httparty'
require 'json'
require 'dotenv'

class NasaFeedService

	include HTTParty

	Dotenv.load

	base_uri 'https://api.nasa.gov'

	def get_nasa_feed_response(start_date, end_date, api_key)
		@nasa_feed_data = JSON.parse(self.class.get("/neo/rest/v1/feed?start_date=#{start_date}&end_date=#{end_date}&api_key=#{ENV['API_KEY']}").body)
	end

	def get_class_from_body_response
		@nasa_feed_data.class
	end

	def get_response_links
	    @nasa_feed_data["links"].class
	end

	def get_response_links_data
	    @nasa_feed_data["links"]["next"].class
	end

	def get_response_element_count
	    @nasa_feed_data["element_count"].class
	end

	def get_response_near_earth_objects
	    @nasa_feed_data["near_earth_objects"].class
	end

end