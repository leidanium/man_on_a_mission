require "test_helper"

class ExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @experience = experiences(:one)
  end

  test "should get index" do
    get experiences_url
    assert_response :success
  end

  test "should get new" do
    get new_experience_url
    assert_response :success
  end

  test "should create experience" do
    assert_difference("Experience.count") do
      post experiences_url, params: { experience: { begin_at: @experience.begin_at, company: @experience.company, desc: @experience.desc, finish_at: @experience.finish_at, user_id: @experience.user_id } }
    end

    assert_redirected_to experience_url(Experience.last)
  end

  test "should show experience" do
    get experience_url(@experience)
    assert_response :success
  end

  test "should get edit" do
    get edit_experience_url(@experience)
    assert_response :success
  end

  test "should update experience" do
    patch experience_url(@experience), params: { experience: { begin_at: @experience.begin_at, company: @experience.company, desc: @experience.desc, finish_at: @experience.finish_at, user_id: @experience.user_id } }
    assert_redirected_to experience_url(@experience)
  end

  test "should destroy experience" do
    assert_difference("Experience.count", -1) do
      delete experience_url(@experience)
    end

    assert_redirected_to experiences_url
  end
end
