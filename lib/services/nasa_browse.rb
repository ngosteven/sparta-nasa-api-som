require 'httparty'
require 'json'

class NasaBrowseService

	include HTTParty

	base_uri 'https://api.nasa.gov'

	def get_nasa_browse_response(api_key)
		@nasa_browse_data = JSON.parse(self.class.get("/neo/rest/v1/neo/browse?api_key=#{api_key}").body)
	end

	def get_class_from_body_response
		@nasa_browse_data.class
	end

end