require 'test_helper'

class MycvsControllerTest < ActionController::TestCase
  setup do
    @mycv = mycvs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mycvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mycv" do
    assert_difference('Mycv.count') do
      post :create, :mycv => @mycv.attributes
    end

    assert_redirected_to mycv_path(assigns(:mycv))
  end

  test "should show mycv" do
    get :show, :id => @mycv.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mycv.to_param
    assert_response :success
  end

  test "should update mycv" do
    put :update, :id => @mycv.to_param, :mycv => @mycv.attributes
    assert_redirected_to mycv_path(assigns(:mycv))
  end

  test "should destroy mycv" do
    assert_difference('Mycv.count', -1) do
      delete :destroy, :id => @mycv.to_param
    end

    assert_redirected_to mycvs_path
  end
end
