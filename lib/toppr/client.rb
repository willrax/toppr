require "toppr/client/user"
require "toppr/client/wallpaper"

module Toppr
  class Client
    include Hashie
    include HTTParty

    base_uri 'https://api.desktoppr.co/1'

    def request(action, path, options)
      parse_response(self.class.send(action, path, options))
    end

    def parse_response(response)
      (Hashie::Mash.new(response)).response
    end

    include Toppr::Client::User
    include Toppr::Client::Wallpaper
  end
end
