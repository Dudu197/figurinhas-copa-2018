require 'test_helper'

class NeeededsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @neeeded = neeededs(:one)
  end

  test "should get index" do
    get neeededs_url
    assert_response :success
  end

  test "should get new" do
    get new_neeeded_url
    assert_response :success
  end

  test "should create neeeded" do
    assert_difference('Neeeded.count') do
      post neeededs_url, params: { neeeded: { number: @neeeded.number } }
    end

    assert_redirected_to neeeded_url(Neeeded.last)
  end

  test "should show neeeded" do
    get neeeded_url(@neeeded)
    assert_response :success
  end

  test "should get edit" do
    get edit_neeeded_url(@neeeded)
    assert_response :success
  end

  test "should update neeeded" do
    patch neeeded_url(@neeeded), params: { neeeded: { number: @neeeded.number } }
    assert_redirected_to neeeded_url(@neeeded)
  end

  test "should destroy neeeded" do
    assert_difference('Neeeded.count', -1) do
      delete neeeded_url(@neeeded)
    end

    assert_redirected_to neeededs_url
  end
end
