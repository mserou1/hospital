require "application_system_test_case"

class VolunteersTest < ApplicationSystemTestCase
  setup do
    @volunteer = volunteers(:one)
  end

  test "visiting the index" do
    visit volunteers_url
    assert_selector "h1", text: "Volunteers"
  end

  test "creating a Volunteer" do
    visit volunteers_url
    click_on "New Volunteer"

    fill_in "First name", with: @volunteer.first_name
    fill_in "Last name", with: @volunteer.last_name
    fill_in "Organization", with: @volunteer.organization
    click_on "Create Volunteer"

    assert_text "Volunteer was successfully created"
    click_on "Back"
  end

  test "updating a Volunteer" do
    visit volunteers_url
    click_on "Edit", match: :first

    fill_in "First name", with: @volunteer.first_name
    fill_in "Last name", with: @volunteer.last_name
    fill_in "Organization", with: @volunteer.organization
    click_on "Update Volunteer"

    assert_text "Volunteer was successfully updated"
    click_on "Back"
  end

  test "destroying a Volunteer" do
    visit volunteers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Volunteer was successfully destroyed"
  end
end
