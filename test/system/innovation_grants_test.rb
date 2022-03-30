require "application_system_test_case"

class InnovationGrantsTest < ApplicationSystemTestCase
  setup do
    @innovation_grant = innovation_grants(:one)
  end

  test "visiting the index" do
    visit innovation_grants_url
    assert_selector "h1", text: "Innovation Grants"
  end

  test "creating a Innovation grant" do
    visit innovation_grants_url
    click_on "New Innovation Grant"

    fill_in "Link url", with: @innovation_grant.link_url
    fill_in "Organisation name", with: @innovation_grant.organisation_name
    fill_in "Project description", with: @innovation_grant.project_description
    fill_in "Project name", with: @innovation_grant.project_name
    fill_in "Year awarded", with: @innovation_grant.year_awarded
    click_on "Create Innovation grant"

    assert_text "Innovation grant was successfully created"
    click_on "Back"
  end

  test "updating a Innovation grant" do
    visit innovation_grants_url
    click_on "Edit", match: :first

    fill_in "Link url", with: @innovation_grant.link_url
    fill_in "Organisation name", with: @innovation_grant.organisation_name
    fill_in "Project description", with: @innovation_grant.project_description
    fill_in "Project name", with: @innovation_grant.project_name
    fill_in "Year awarded", with: @innovation_grant.year_awarded
    click_on "Update Innovation grant"

    assert_text "Innovation grant was successfully updated"
    click_on "Back"
  end

  test "destroying a Innovation grant" do
    visit innovation_grants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Innovation grant was successfully destroyed"
  end
end
