require "application_system_test_case"

class ApplicationsTest < ApplicationSystemTestCase
  setup do
    @application = applications(:one)
  end

  test "visiting the index" do
    visit applications_url
    assert_selector "h1", text: "Applications"
  end

  test "creating a Application" do
    visit applications_url
    click_on "New Application"

    fill_in "Date", with: @application.date
    fill_in "Email", with: @application.email
    fill_in "Organisation", with: @application.organisation
    fill_in "Text", with: @application.text
    fill_in "Type", with: @application.type
    click_on "Create Application"

    assert_text "Application was successfully created"
    click_on "Back"
  end

  test "updating a Application" do
    visit applications_url
    click_on "Edit", match: :first

    fill_in "Date", with: @application.date
    fill_in "Email", with: @application.email
    fill_in "Organisation", with: @application.organisation
    fill_in "Text", with: @application.text
    fill_in "Type", with: @application.type
    click_on "Update Application"

    assert_text "Application was successfully updated"
    click_on "Back"
  end

  test "destroying a Application" do
    visit applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Application was successfully destroyed"
  end
end
