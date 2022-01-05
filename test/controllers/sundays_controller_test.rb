require "test_helper"

class SundaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sunday = sundays(:one)
  end

  test "should get index" do
    get sundays_url, as: :json
    assert_response :success
  end

  test "should create sunday" do
    assert_difference('Sunday.count') do
      post sundays_url, params: { sunday: { details: @sunday.details, name: @sunday.name, time: @sunday.time } }, as: :json
    end

    assert_response 201
  end

  test "should show sunday" do
    get sunday_url(@sunday), as: :json
    assert_response :success
  end

  test "should update sunday" do
    patch sunday_url(@sunday), params: { sunday: { details: @sunday.details, name: @sunday.name, time: @sunday.time } }, as: :json
    assert_response 200
  end

  test "should destroy sunday" do
    assert_difference('Sunday.count', -1) do
      delete sunday_url(@sunday), as: :json
    end

    assert_response 204
  end
end
