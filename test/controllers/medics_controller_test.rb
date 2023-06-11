require "test_helper"

class MedicsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get medics_create_url
    assert_response :success
  end
end
