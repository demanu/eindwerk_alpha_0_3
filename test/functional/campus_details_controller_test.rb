require 'test_helper'

class CampusDetailsControllerTest < ActionController::TestCase
  setup do
    @campus_detail = campus_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campus_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campus_detail" do
    assert_difference('CampusDetail.count') do
      post :create, campus_detail: { address: @campus_detail.address, name: @campus_detail.name }
    end

    assert_redirected_to campus_detail_path(assigns(:campus_detail))
  end

  test "should show campus_detail" do
    get :show, id: @campus_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campus_detail
    assert_response :success
  end

  test "should update campus_detail" do
    put :update, id: @campus_detail, campus_detail: { address: @campus_detail.address, name: @campus_detail.name }
    assert_redirected_to campus_detail_path(assigns(:campus_detail))
  end

  test "should destroy campus_detail" do
    assert_difference('CampusDetail.count', -1) do
      delete :destroy, id: @campus_detail
    end

    assert_redirected_to campus_details_path
  end
end
