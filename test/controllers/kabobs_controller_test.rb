require 'test_helper'

class KabobsControllerTest < ActionController::TestCase
  setup do
    @kabob = kabobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kabobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kabob" do
    assert_difference('Kabob.count') do
      post :create, kabob: { cost: @kabob.cost, image: @kabob.image, name: @kabob.name, sides: @kabob.sides }
    end

    assert_redirected_to kabob_path(assigns(:kabob))
  end

  test "should show kabob" do
    get :show, id: @kabob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kabob
    assert_response :success
  end

  test "should update kabob" do
    patch :update, id: @kabob, kabob: { cost: @kabob.cost, image: @kabob.image, name: @kabob.name, sides: @kabob.sides }
    assert_redirected_to kabob_path(assigns(:kabob))
  end

  test "should destroy kabob" do
    assert_difference('Kabob.count', -1) do
      delete :destroy, id: @kabob
    end

    assert_redirected_to kabobs_path
  end
end
