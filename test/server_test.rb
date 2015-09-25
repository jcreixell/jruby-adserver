require "cuba/test"
require_relative "../lib/jruby-adserver"
require_relative "../server"

scope do
  test "Status Page" do
    get "/"

    follow_redirect!
    assert_equal "{\"version\":1,\"result\":\"ok\"}", last_response.body
  end
end
