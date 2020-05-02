require 'test_helper'

class FaQsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fa_qs_index_url
    assert_response :success
  end

end
