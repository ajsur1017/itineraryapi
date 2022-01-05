require "test_helper"

class WednesdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wednesday = wednesdays(:one)
  end

  test "should get index" do
    get wednesdays_url, as: :json
    assert_response :success
  end

  test "should create wednesday" do
    assert_difference('Wednesday.count') do
      post wednesdays_url, params: { wednesday: { details: @wednesday.details, name: @wednesday.name, time: @wednesday.time } }, as: :json
    end

    assert_response 201
  end

  test "should show wednesday" do
    get wednesday_url(@wednesday), as: :json
    assert_response :success
  end

  test "should update wednesday" do
    patch wednesday_url(@wednesday), params: { wednesday: { details: @wednesday.details, name: @wednesday.name, time: @wednesday.time } }, as: :json
    assert_response 200
  end

  test "should destroy wednesday" do
    assert_difference('Wednesday.count', -1) do
      delete wednesday_url(@wednesday), as: :json
    end

    assert_response 204
  end
end
