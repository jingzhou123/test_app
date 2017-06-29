require 'test_helper'

class MindMapControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get mind_map_show_url
    assert_response :success
  end

end
