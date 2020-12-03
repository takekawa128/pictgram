require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get test01" do
    get pages_test01_url
    assert_response :success
  end

end
