require 'test_helper'

class CvEntriesControllerTest < ActionController::TestCase
  setup do
    @cv_entry = cv_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cv_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cv_entry" do
    assert_difference('CvEntry.count') do
      post :create, :cv_entry => @cv_entry.attributes
    end

    assert_redirected_to cv_entry_path(assigns(:cv_entry))
  end

  test "should show cv_entry" do
    get :show, :id => @cv_entry.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cv_entry.to_param
    assert_response :success
  end

  test "should update cv_entry" do
    put :update, :id => @cv_entry.to_param, :cv_entry => @cv_entry.attributes
    assert_redirected_to cv_entry_path(assigns(:cv_entry))
  end

  test "should destroy cv_entry" do
    assert_difference('CvEntry.count', -1) do
      delete :destroy, :id => @cv_entry.to_param
    end

    assert_redirected_to cv_entries_path
  end
end
