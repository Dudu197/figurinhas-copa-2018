require 'test_helper'

class RepitedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repited = repiteds(:one)
  end

  test "should get index" do
    get repiteds_url
    assert_response :success
  end

  test "should get new" do
    get new_repited_url
    assert_response :success
  end

  test "should create repited" do
    assert_difference('Repited.count') do
      post repiteds_url, params: { repited: { number: @repited.number } }
    end

    assert_redirected_to repited_url(Repited.last)
  end

  test "should show repited" do
    get repited_url(@repited)
    assert_response :success
  end

  test "should get edit" do
    get edit_repited_url(@repited)
    assert_response :success
  end

  test "should update repited" do
    patch repited_url(@repited), params: { repited: { number: @repited.number } }
    assert_redirected_to repited_url(@repited)
  end

  test "should destroy repited" do
    assert_difference('Repited.count', -1) do
      delete repited_url(@repited)
    end

    assert_redirected_to repiteds_url
  end
end
