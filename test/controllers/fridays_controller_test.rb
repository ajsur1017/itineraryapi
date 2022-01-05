require "test_helper"

class FridaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friday = fridays(:one)
  end

  test "should get index" do
    get fridays_url, as: :json
    assert_response :success
  end

  test "should create friday" do
    assert_difference('Friday.count') do
      post fridays_url, params: { friday: { details: @friday.details, name: @friday.name, time: @friday.time } }, as: :json
    end

    assert_response 201
  end

  test "should show friday" do
    get friday_url(@friday), as: :json
    assert_response :success
  end

  test "should update friday" do
    patch friday_url(@friday), params: { friday: { details: @friday.details, name: @friday.name, time: @friday.time } }, as: :json
    assert_response 200
  end

  test "should destroy friday" do
    assert_difference('Friday.count', -1) do
      delete friday_url(@friday), as: :json
    end

    assert_response 204
  end
end
