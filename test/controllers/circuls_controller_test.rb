require 'test_helper'

class CirculsControllerTest < ActionController::TestCase
  setup do
    @circul = circuls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:circuls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create circul" do
    assert_difference('Circul.count') do
      post :create, circul: { father_circul_id: @circul.father_circul_id, name: @circul.name }
    end

    assert_redirected_to circul_path(assigns(:circul))
  end

  test "should show circul" do
    get :show, id: @circul
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @circul
    assert_response :success
  end

  test "should update circul" do
    patch :update, id: @circul, circul: { father_circul_id: @circul.father_circul_id, name: @circul.name }
    assert_redirected_to circul_path(assigns(:circul))
  end

  test "should destroy circul" do
    assert_difference('Circul.count', -1) do
      delete :destroy, id: @circul
    end

    assert_redirected_to circuls_path
  end
end
