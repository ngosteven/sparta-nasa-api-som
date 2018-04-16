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

	def get_response_links
	    @nasa_feed_data["links"].class
	end

	def get_response_element_count
	    get_result['element_count']
	end

	def get_response_near_earth_objects
	    get_result['near_earth_objects']
	end

end