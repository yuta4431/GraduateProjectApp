require "test_helper"

class HostsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get hosts_show_url
    assert_response :success
  end
end
