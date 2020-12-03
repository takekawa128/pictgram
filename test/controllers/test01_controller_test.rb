require 'test_helper'

class Test01ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test01_index_url
    assert_response :success
  end

end
