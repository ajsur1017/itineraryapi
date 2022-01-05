require "test_helper"

class TuesdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuesday = tuesdays(:one)
  end

  test "should get index" do
    get tuesdays_url, as: :json
    assert_response :success
  end

  test "should create tuesday" do
    assert_difference('Tuesday.count') do
      post tuesdays_url, params: { tuesday: { details: @tuesday.details, name: @tuesday.name, time: @tuesday.time } }, as: :json
    end

    assert_response 201
  end

  test "should show tuesday" do
    get tuesday_url(@tuesday), as: :json
    assert_response :success
  end

  test "should update tuesday" do
    patch tuesday_url(@tuesday), params: { tuesday: { details: @tuesday.details, name: @tuesday.name, time: @tuesday.time } }, as: :json
    assert_response 200
  end

  test "should destroy tuesday" do
    assert_difference('Tuesday.count', -1) do
      delete tuesday_url(@tuesday), as: :json
    end

    assert_response 204
  end
end
