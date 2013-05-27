module Toppr
  class Client
    module Wallpaper
      def random(username=nil, options = {})
        if username == nil
          request(:get, "/wallpapers/random", options)
        else
          request(:get, "/users/#{username}/wallpapers/random", options)
        end
      end

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
