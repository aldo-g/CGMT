require "test_helper"

class CoastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coaster = coasters(:one)
  end

  test "should get index" do
    get coasters_url
    assert_response :success
  end

  test "should get new" do
    get new_coaster_url
    assert_response :success
  end

  test "should create coaster" do
    assert_difference('Coaster.count') do
      post coasters_url, params: { coaster: { address: @coaster.address, date: @coaster.date, latitude: @coaster.latitude, longitude: @coaster.longitude, quanity: @coaster.quanity } }
    end

    assert_redirected_to coaster_url(Coaster.last)
  end

  test "should show coaster" do
    get coaster_url(@coaster)
    assert_response :success
  end

  test "should get edit" do
    get edit_coaster_url(@coaster)
    assert_response :success
  end

  test "should update coaster" do
    patch coaster_url(@coaster), params: { coaster: { address: @coaster.address, date: @coaster.date, latitude: @coaster.latitude, longitude: @coaster.longitude, quanity: @coaster.quanity } }
    assert_redirected_to coaster_url(@coaster)
  end

  test "should destroy coaster" do
    assert_difference('Coaster.count', -1) do
      delete coaster_url(@coaster)
    end

    assert_redirected_to coasters_url
  end
end
