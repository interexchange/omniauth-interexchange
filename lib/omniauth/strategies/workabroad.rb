require "omniauth/strategies/oauth2"

module OmniAuth
  module Strategies
    class Workabroad < OmniAuth::Strategies::OAuth2
      option :name, :workabroad

      option :client_options, {
        site: "https://api.workabroad.io",
        authorize_url: "https://access.workabroad.io/oauth/authorize",
        token_url: "https://access.workabroad.io/oauth/token/info"
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

