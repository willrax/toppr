require 'spec_helper'

describe "toppr client" do

	let(:client) { Toppr::Client.new }

	it "responds to user"  do
		client.should respond_to :user
	end

	it "responds to wallpapers" do
		client.should respond_to :wallpapers
	end

	it "responds to random" do
		client.should respond_to :random
	end

	it "matches the base uri" do
		Toppr::Client.base_uri
	end

end
