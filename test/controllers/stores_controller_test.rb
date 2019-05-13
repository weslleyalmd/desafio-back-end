require 'test_helper'

class StoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stores_url
    assert_response :success
    assert_select "h1", text: "Lojas"
  end

end
