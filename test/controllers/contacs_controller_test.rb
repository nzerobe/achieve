require 'test_helper'

class ContacsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contacs_new_url
    assert_response :success
  end

end
