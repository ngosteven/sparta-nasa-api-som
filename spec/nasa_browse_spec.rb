require 'spec_helper'

describe 'NasaBrowse' do

	context 'requesting Nasa browse correctly working' do

		before(:all) do
			@nasa_browse = Nasaio.new.nasa_browse_service
			@nasa_browse.get_nasa_browse_response('253MSMkA1ASALs0Xa9g72OSx2SPbdoTXn7q03JVo')
		end

		it "should have a results hash" do
			expect(@nasa_browse.get_class_from_body_response).to eq Hash
	    end

	end

end