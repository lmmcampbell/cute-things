require "test_helper"

class CutiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuty = cuties(:one)
  end

  test "should get index" do
    get cuties_url
    assert_response :success
  end

  test "should get new" do
    get new_cuty_url
    assert_response :success
  end

  test "should create cuty" do
    assert_difference('Cuty.count') do
      post cuties_url, params: { cuty: { description: @cuty.description, image: @cuty.image, name: @cuty.name } }
    end

    assert_redirected_to cuty_url(Cuty.last)
  end

  test "should show cuty" do
    get cuty_url(@cuty)
    assert_response :success
  end

  test "should get edit" do
    get edit_cuty_url(@cuty)
    assert_response :success
  end

  test "should update cuty" do
    patch cuty_url(@cuty), params: { cuty: { description: @cuty.description, image: @cuty.image, name: @cuty.name } }
    assert_redirected_to cuty_url(@cuty)
  end

  test "should destroy cuty" do
    assert_difference('Cuty.count', -1) do
      delete cuty_url(@cuty)
    end

    assert_redirected_to cuties_url
  end
end
