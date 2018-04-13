require 'httparty'
require 'json'

class NasaBrowseService

	include HTTParty

	base_uri 'api link'

	def get_nasa_browse_response(name)
		@nasa_browse_data = JSON.parse(self.class.get("link")).body)
	end

end