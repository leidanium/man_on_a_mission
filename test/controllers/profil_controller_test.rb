require "test_helper"

class ProfilControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profil_index_url
    assert_response :success
  end

  test "should get search" do
    get profil_search_url
    assert_response :success
  end

  test "should get show" do
    get profil_show_url
    assert_response :success
  end
end
