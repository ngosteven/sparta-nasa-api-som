require 'spec_helper'

describe 'NasaBrowse' do

	context 'requesting Nasa browse correctly working' do

		before(:all) do
			@nasa_browse = Nasaio.new.nasa_browse_service
			@nasa_browse.get_nasa_browse_response('253MSMkA1ASALs0Xa9g72OSx2SPbdoTXn7q03JVo')
		end

		it "should have a results hash" do
			expect(@nasa_browse.get_class_from_body_response).to eq(Hash)
	    end

	    it "should return links a hash" do
	    	expect(@nasa_browse.get_response_links).to eq(Hash)
	    end

	    it "should return page a hash" do
	    	expect(@nasa_browse.get_response_page).to eq(Hash)
	    end

	    it "should return page size a integer" do
	    	expect(@nasa_browse.get_response_page_size).to eq(Integer)
	    end

	    it "should return page total elements a integer" do
	    	expect(@nasa_browse.get_response_page_total_elements).to eq(Integer)
	    end

	    it "should return page total pages a integer" do
	    	expect(@nasa_browse.get_response_page_total_pages).to eq(Integer)
	    end

	    it "should return page number a integer" do
	    	expect(@nasa_browse.get_response_page_number).to eq(Integer)
	    end

	end

end