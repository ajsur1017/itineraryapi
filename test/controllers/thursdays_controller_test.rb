require "test_helper"

class ThursdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thursday = thursdays(:one)
  end

  test "should get index" do
    get thursdays_url, as: :json
    assert_response :success
  end

  test "should create thursday" do
    assert_difference('Thursday.count') do
      post thursdays_url, params: { thursday: { details: @thursday.details, name: @thursday.name, time: @thursday.time } }, as: :json
    end

    assert_response 201
  end

  test "should show thursday" do
    get thursday_url(@thursday), as: :json
    assert_response :success
  end

  test "should update thursday" do
    patch thursday_url(@thursday), params: { thursday: { details: @thursday.details, name: @thursday.name, time: @thursday.time } }, as: :json
    assert_response 200
  end

  test "should destroy thursday" do
    assert_difference('Thursday.count', -1) do
      delete thursday_url(@thursday), as: :json
    end

    assert_response 204
  end
end
