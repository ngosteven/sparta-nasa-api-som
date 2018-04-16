require 'spec_helper'

describe 'NasaLookup' do

	context 'requesting Nasa lookup correctly working' do

		before(:all) do
			@nasa_lookup = Nasaio.new.nasa_lookup_service
			@nasa_lookup.get_nasa_lookup_response('253MSMkA1ASALs0Xa9g72OSx2SPbdoTXn7q03JVo')
		end

		it "should have a results hash" do
			expect(@nasa_lookup.get_class_from_body_response).to eq(Hash)
	    end

	    it "should return links a hash" do
	    	expect(@nasa_lookup.get_response_links).to eq(Hash)
	    end

	    it "should return neo reference id a string" do
	    	expect(@nasa_lookup.get_response_neo_reference_id).to eq(String)
	    end

	    it "should return absolute magnitue h a float" do
	    	expect(@nasa_lookup.get_response_absolute_magnitude_h).to eq(Float)
	    end

	end

end