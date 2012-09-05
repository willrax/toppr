module Toppr
	class Client
		module Wallpaper

			# Retrieve a random wallpaper
			#
			# @param option [String] username
      # @return [Hashie::Mash] A wallpaper
      # @example Retrieve a random wallpaper for user
      # 	Toppr.random('willrax')
			def random(username=nil, options = {})
				if username == nil 
					request(:get, "/wallpapers/random", options)
				else
					request(:get, "/users/#{username}/wallpapers/random", options)
				end
			end

			# Retrieve all wallpapers
			#
			# @param option [String] username
			# @option option [String] page
      # @return [Hashie::Mash] All Wallpapers
      # @example Retrieve wallpapers for user
      # 	Toppr.wallpapers('willrax')
      def wallpapers(username=nil, options = {})
        if username == nil
        	request(:get, "/wallpapers", options)
        else
        	request(:get, "/users/#{username}/wallpapers", options)
        end
      end
      
		end
	end
end