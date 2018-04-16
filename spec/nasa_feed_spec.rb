require 'spec_helper'

describe 'NasaFeed' do

	context 'requesting Nasa feed correctly working' do

		before(:all) do
			@nasa_feed = Nasaio.new.nasa_feed_service
			@nasa_feed.get_nasa_feed_response('2017-04-13','2017-04-13','253MSMkA1ASALs0Xa9g72OSx2SPbdoTXn7q03JVo')
		end

		it "should have a results hash" do
			expect(@nasa_feed.get_class_from_body_response).to eq Hash
	    end

	    it "should return links a hash" do
	    	expect(@nasa_feed.get_response_links).to eq Hash
	    end

	    it "should return element count as string" do
	    	expect(@nasa_feed.get_response_element count).to be_kind_of(String)
	    end

	    it "should return near earth objects as string" do
	    	expect(@nasa_feed.get_response_near_earth_objects).to be_kind_of(String)
	    end

	end

end