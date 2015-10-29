require 'test_helper'

class DesertsControllerTest < ActionController::TestCase
  setup do
    @desert = deserts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deserts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desert" do
    assert_difference('Desert.count') do
      post :create, desert: { cost: @desert.cost, image: @desert.image, name: @desert.name }
    end

    assert_redirected_to desert_path(assigns(:desert))
  end

  test "should show desert" do
    get :show, id: @desert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desert
    assert_response :success
  end

  test "should update desert" do
    patch :update, id: @desert, desert: { cost: @desert.cost, image: @desert.image, name: @desert.name }
    assert_redirected_to desert_path(assigns(:desert))
  end

  test "should destroy desert" do
    assert_difference('Desert.count', -1) do
      delete :destroy, id: @desert
    end

    assert_redirected_to deserts_path
  end
end
