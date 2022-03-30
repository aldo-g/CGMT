require "test_helper"

class InnovationGrantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @innovation_grant = innovation_grants(:one)
  end

  test "should get index" do
    get innovation_grants_url
    assert_response :success
  end

  test "should get new" do
    get new_innovation_grant_url
    assert_response :success
  end

  test "should create innovation_grant" do
    assert_difference('InnovationGrant.count') do
      post innovation_grants_url, params: { innovation_grant: { link_url: @innovation_grant.link_url, organisation_name: @innovation_grant.organisation_name, project_description: @innovation_grant.project_description, project_name: @innovation_grant.project_name, year_awarded: @innovation_grant.year_awarded } }
    end

    assert_redirected_to innovation_grant_url(InnovationGrant.last)
  end

  test "should show innovation_grant" do
    get innovation_grant_url(@innovation_grant)
    assert_response :success
  end

  test "should get edit" do
    get edit_innovation_grant_url(@innovation_grant)
    assert_response :success
  end

  test "should update innovation_grant" do
    patch innovation_grant_url(@innovation_grant), params: { innovation_grant: { link_url: @innovation_grant.link_url, organisation_name: @innovation_grant.organisation_name, project_description: @innovation_grant.project_description, project_name: @innovation_grant.project_name, year_awarded: @innovation_grant.year_awarded } }
    assert_redirected_to innovation_grant_url(@innovation_grant)
  end

  test "should destroy innovation_grant" do
    assert_difference('InnovationGrant.count', -1) do
      delete innovation_grant_url(@innovation_grant)
    end

    assert_redirected_to innovation_grants_url
  end
end
