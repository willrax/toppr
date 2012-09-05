require "toppr/client/user"
require "toppr/client/wallpaper"

module Toppr
	class Client

	  include Hashie
	  include HTTParty

	  base_uri 'https://api.desktoppr.co/1'

	  # Make the request to the API
	  #
	  def request(action, path, options)
	  	parse_response(self.class.send(action, path, options))
	  end
	  
	  private

	  # Parse the response
	  #
	  def parse_response(response)
	  	(Hashie::Mash.new(response)).response
	  end

		include Toppr::Client::User
	  include Toppr::Client::Wallpaper

	end
end
