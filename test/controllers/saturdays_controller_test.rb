require "test_helper"

class SaturdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saturday = saturdays(:one)
  end

  test "should get index" do
    get saturdays_url, as: :json
    assert_response :success
  end

  test "should create saturday" do
    assert_difference('Saturday.count') do
      post saturdays_url, params: { saturday: { details: @saturday.details, name: @saturday.name, time: @saturday.time } }, as: :json
    end

    assert_response 201
  end

  test "should show saturday" do
    get saturday_url(@saturday), as: :json
    assert_response :success
  end

  test "should update saturday" do
    patch saturday_url(@saturday), params: { saturday: { details: @saturday.details, name: @saturday.name, time: @saturday.time } }, as: :json
    assert_response 200
  end

  test "should destroy saturday" do
    assert_difference('Saturday.count', -1) do
      delete saturday_url(@saturday), as: :json
    end

    assert_response 204
  end
end
