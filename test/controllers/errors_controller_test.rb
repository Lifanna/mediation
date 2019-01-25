require 'test_helper'

class ErrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get render_404" do
    get errors_render_404_url
    assert_response :success
  end

end
