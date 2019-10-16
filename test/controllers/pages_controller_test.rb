require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home:new" do
    get pages_home:new_url
    assert_response :success
  end

end
