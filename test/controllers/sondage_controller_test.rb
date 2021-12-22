require "test_helper"

class SondageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sondage_new_url
    assert_response :success
  end

  test "should get create" do
    get sondage_create_url
    assert_response :success
  end
end
