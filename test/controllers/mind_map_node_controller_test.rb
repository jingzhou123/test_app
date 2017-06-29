require 'test_helper'

class MindMapNodeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get mind_map_node_show_url
    assert_response :success
  end

end
