require "helper"
require "omniauth-workabroad"
require "openssl"
require "base64"

class StrategyTest < StrategyTestCase
  include OAuth2StrategyTests
end

class ClientTest < StrategyTestCase
  test "has correct WorkAbroad api" do
    assert_equal "https://api.workabroad.io", strategy.client.site
  end

  test "has correct authorize url" do
    assert_equal "https://access.workabroad.io/oauth/authorize", strategy.client.options[:authorize_url]
  end

  test "has correct token url" do
    assert_equal "https://access.workabroad.io/oauth/token/info", strategy.client.options[:token_url]
  end
end

class UidTest < StrategyTestCase
  def setup
    super
    strategy.stubs(:raw_info).returns({ "id" => "123" })
  end

  test "returns the id from raw_info" do
    assert_equal "123", strategy.uid
  end
end

class InfoTest < StrategyTestCase
  def setup
    super
    @raw_info ||= { "email" => "dirkkelly@workabroad.io" }
    strategy.stubs(:raw_info).returns(@raw_info)
  end

  test "returns the email" do
    assert_equal "dirkkelly@workabroad.io", strategy.info["email"]
  end
end

class ExtraTest < StrategyTestCase
  def setup
    super
    @raw_info ||= { "email" => "dirkkelly@workabroad.io" }
    strategy.stubs(:raw_info).returns(@raw_info)
  end

  test "returns the raw_info" do
    assert_equal @raw_info, strategy.extra["raw_info"]
  end
end
