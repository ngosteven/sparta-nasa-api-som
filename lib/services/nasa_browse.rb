require 'httparty'
require 'json'
require 'dotenv'

class NasaBrowseService

	include HTTParty

	Dotenv.load

	base_uri 'https://api.nasa.gov'

	def get_nasa_browse_response(api_key)
		@nasa_browse_data = JSON.parse(self.class.get("/neo/rest/v1/neo/browse?api_key=#{ENV['API_KEY']}").body)
	end

	def get_class_from_body_response
		@nasa_browse_data.class
	end

	def get_response_links
	    @nasa_browse_data["links"].class
	end

	def get_response_page
	    @nasa_browse_data["page"].class
	end

	def get_response_page_size
	    @nasa_browse_data["page"]["size"].class
	end

	def get_response_page_total_elements
	    @nasa_browse_data["page"]["total_elements"].class
	end

	def get_response_page_total_pages
	    @nasa_browse_data["page"]["total_pages"].class
	end

	def get_response_page_number
	    @nasa_browse_data["page"]["number"].class
	end

end