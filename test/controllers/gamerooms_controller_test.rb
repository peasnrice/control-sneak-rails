require 'test_helper'

class GameroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gameroom = gamerooms(:one)
  end

  test "should get index" do
    get gamerooms_url
    assert_response :success
  end

  test "should get new" do
    get new_gameroom_url
    assert_response :success
  end

  test "should create gameroom" do
    assert_difference('Gameroom.count') do
      post gamerooms_url, params: { gameroom: { title: @gameroom.title, user_id: @gameroom.user_id } }
    end

    assert_redirected_to gameroom_url(Gameroom.last)
  end

  test "should show gameroom" do
    get gameroom_url(@gameroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_gameroom_url(@gameroom)
    assert_response :success
  end

  test "should update gameroom" do
    patch gameroom_url(@gameroom), params: { gameroom: { title: @gameroom.title, user_id: @gameroom.user_id } }
    assert_redirected_to gameroom_url(@gameroom)
  end

  test "should destroy gameroom" do
    assert_difference('Gameroom.count', -1) do
      delete gameroom_url(@gameroom)
    end

    assert_redirected_to gamerooms_url
  end
end
