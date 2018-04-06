require 'test_helper'

class ClimatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @climate = climates(:one)
  end

  test "should get index" do
    get climates_url, as: :json
    assert_response :success
  end

  test "should create climate" do
    assert_difference('Climate.count') do
      post climates_url, params: { climate: { city: @climate.city, status: @climate.status, temperature: @climate.temperature } }, as: :json
    end

    assert_response 201
  end

  test "should show climate" do
    get climate_url(@climate), as: :json
    assert_response :success
  end

  test "should update climate" do
    patch climate_url(@climate), params: { climate: { city: @climate.city, status: @climate.status, temperature: @climate.temperature } }, as: :json
    assert_response 200
  end

  test "should destroy climate" do
    assert_difference('Climate.count', -1) do
      delete climate_url(@climate), as: :json
    end

    assert_response 204
  end
end
