require 'test_helper'

class ShortControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get short_index_url
    assert_response :success
  end

end
