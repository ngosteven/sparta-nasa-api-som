require 'spec_helper'

describe 'NasaLookup' do

	context 'requesting Nasa lookup correctly working' do

		before(:all) do
			@nasa_lookup = Nasaio.new.nasa_lookup_service
			@nasa_lookup.get_nasa_lookup_response('253MSMkA1ASALs0Xa9g72OSx2SPbdoTXn7q03JVo')
		end

		it "should have a results hash" do
			expect(@nasa_lookup.get_class_from_body_response).to eq Hash
	    end

	end

end