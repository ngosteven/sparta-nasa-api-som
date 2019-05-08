require 'services/nasa_feed'
require 'services/nasa_lookup'
require 'services/nasa_browse'

class Nasaio
	def nasa_feed_service
		NasaFeedService.new
	end

	def nasa_lookup_service
		NasaLookupService.new
	end

	def nasa_browse_service
		NasaBrowseService.new
	end
end

superClass = Nasaio.new