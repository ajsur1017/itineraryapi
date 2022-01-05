require "test_helper"

class MondaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monday = mondays(:one)
  end

  test "should get index" do
    get mondays_url, as: :json
    assert_response :success
  end

  test "should create monday" do
    assert_difference('Monday.count') do
      post mondays_url, params: { monday: { details: @monday.details, name: @monday.name, time: @monday.time } }, as: :json
    end

    assert_response 201
  end

  test "should show monday" do
    get monday_url(@monday), as: :json
    assert_response :success
  end

  test "should update monday" do
    patch monday_url(@monday), params: { monday: { details: @monday.details, name: @monday.name, time: @monday.time } }, as: :json
    assert_response 200
  end

  test "should destroy monday" do
    assert_difference('Monday.count', -1) do
      delete monday_url(@monday), as: :json
    end

    assert_response 204
  end
end
