module Toppr
  class Client
    module User

      # Retrieve a user profile
      #
      # @param username [String]
      # @return [Hashie::Mash] User profile
      # @example Retrieve user profile
      #   Toppr.user('willrax')
      def user(username, options={})
        request(:get, "/users/#{username}", options)
      end
    end
  end
end
