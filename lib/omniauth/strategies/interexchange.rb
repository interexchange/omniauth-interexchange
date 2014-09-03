require "omniauth/strategies/oauth2"

module OmniAuth
  module Strategies
    class InterExchange < OmniAuth::Strategies::OAuth2
      option :name, :interexchange

      option :client_options, {
        site: "https://auth.interexchange.io",
        authorize_url: "https://auth.interexchange.io/oauth/authorize",
        token_url: "https://auth.interexchange.io/oauth/token"
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

