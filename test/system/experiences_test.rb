require "application_system_test_case"

class ExperiencesTest < ApplicationSystemTestCase
  setup do
    @experience = experiences(:one)
  end

  test "visiting the index" do
    visit experiences_url
    assert_selector "h1", text: "Experiences"
  end

  test "should create experience" do
    visit experiences_url
    click_on "New experience"

    fill_in "Begin at", with: @experience.begin_at
    fill_in "Company", with: @experience.company
    fill_in "Desc", with: @experience.desc
    fill_in "Finish at", with: @experience.finish_at
    fill_in "User", with: @experience.user_id
    click_on "Create Experience"

    assert_text "Experience was successfully created"
    click_on "Back"
  end

  test "should update Experience" do
    visit experience_url(@experience)
    click_on "Edit this experience", match: :first

    fill_in "Begin at", with: @experience.begin_at
    fill_in "Company", with: @experience.company
    fill_in "Desc", with: @experience.desc
    fill_in "Finish at", with: @experience.finish_at
    fill_in "User", with: @experience.user_id
    click_on "Update Experience"

    assert_text "Experience was successfully updated"
    click_on "Back"
  end

  test "should destroy Experience" do
    visit experience_url(@experience)
    click_on "Destroy this experience", match: :first

    assert_text "Experience was successfully destroyed"
  end
end
