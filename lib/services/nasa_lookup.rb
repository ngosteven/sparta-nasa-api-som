require 'httparty'
require 'json'
require 'dotenv'

class NasaLookupService

	include HTTParty

	Dotenv.load

	base_uri 'https://api.nasa.gov'

	def get_nasa_lookup_response(api_key)
		@nasa_lookup_data = JSON.parse(self.class.get("/neo/rest/v1/neo/3542519?api_key=#{ENV['API_KEY']}").body)
	end

	def get_class_from_body_response
		@nasa_lookup_data.class
	end

	def get_response_links
	    @nasa_lookup_data["links"].class
	end

	def get_response_neo_reference_id
	    @nasa_lookup_data["neo_reference_id"].class
	end

	def get_response_absolute_magnitude_h
		@nasa_lookup_data["absolute_magnitude_h"].class	
	end

end