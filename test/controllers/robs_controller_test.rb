require 'test_helper'

class RobsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get robs_index_url
    assert_response :success
  end

end
