require 'test_helper'

class CategoryCvsControllerTest < ActionController::TestCase
  setup do
    @category_cv = category_cvs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_cvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_cv" do
    assert_difference('CategoryCv.count') do
      post :create, :category_cv => @category_cv.attributes
    end

    assert_redirected_to category_cv_path(assigns(:category_cv))
  end

  test "should show category_cv" do
    get :show, :id => @category_cv.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @category_cv.to_param
    assert_response :success
  end

  test "should update category_cv" do
    put :update, :id => @category_cv.to_param, :category_cv => @category_cv.attributes
    assert_redirected_to category_cv_path(assigns(:category_cv))
  end

  test "should destroy category_cv" do
    assert_difference('CategoryCv.count', -1) do
      delete :destroy, :id => @category_cv.to_param
    end

    assert_redirected_to category_cvs_path
  end
end
