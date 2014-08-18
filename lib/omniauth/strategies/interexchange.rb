require "omniauth/strategies/oauth2"

module OmniAuth
  module Strategies
    class InterExchange < OmniAuth::Strategies::OAuth2
      option :name, :InterExchange

      option :client_options, {
        site: "https://access.interexchange.io",
        authorize_url: "https://access.interexchange.io/oauth/authorize",
        token_url: "https://access.interexchange.io/oauth/token/info"
      }

      uid do
        raw_info["id"]
      end

      info do
        {
          "email" => raw_info["email"]
        }
      end

      extra do
        {
          "raw_info" => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/user.json").parsed
      end
    end
  end
end

