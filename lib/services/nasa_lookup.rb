require 'httparty'
require 'json'

class NasaLookupService

	include HTTParty

	base_uri 'api link'

	def get_nasa_lookup_response(name)
		@nasa_lookup_data = JSON.parse(self.class.get("link")).body)
	end

end