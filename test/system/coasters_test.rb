require "application_system_test_case"

class CoastersTest < ApplicationSystemTestCase
  setup do
    @coaster = coasters(:one)
  end

  test "visiting the index" do
    visit coasters_url
    assert_selector "h1", text: "Coasters"
  end

  test "creating a Coaster" do
    visit coasters_url
    click_on "New Coaster"

    fill_in "Address", with: @coaster.address
    fill_in "Date", with: @coaster.date
    fill_in "Latitude", with: @coaster.latitude
    fill_in "Longitude", with: @coaster.longitude
    fill_in "Quanity", with: @coaster.quanity
    click_on "Create Coaster"

    assert_text "Coaster was successfully created"
    click_on "Back"
  end

  test "updating a Coaster" do
    visit coasters_url
    click_on "Edit", match: :first

    fill_in "Address", with: @coaster.address
    fill_in "Date", with: @coaster.date
    fill_in "Latitude", with: @coaster.latitude
    fill_in "Longitude", with: @coaster.longitude
    fill_in "Quanity", with: @coaster.quanity
    click_on "Update Coaster"

    assert_text "Coaster was successfully updated"
    click_on "Back"
  end

  test "destroying a Coaster" do
    visit coasters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coaster was successfully destroyed"
  end
end
