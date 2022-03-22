require "test_helper"

class ProfilsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profils_index_url
    assert_response :success
  end

  test "should get search" do
    get profils_search_url
    assert_response :success
  end

  test "should get show" do
    get profils_show_url
    assert_response :success
  end
end
