require 'test_helper'

class AuthorRolesControllerTest < ActionController::TestCase
  setup do
    @author_role = author_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:author_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create author_role" do
    assert_difference('AuthorRole.count') do
      post :create, author_role: { role: @author_role.role }
    end

    assert_redirected_to author_role_path(assigns(:author_role))
  end

  test "should show author_role" do
    get :show, id: @author_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @author_role
    assert_response :success
  end

  test "should update author_role" do
    put :update, id: @author_role, author_role: { role: @author_role.role }
    assert_redirected_to author_role_path(assigns(:author_role))
  end

  test "should destroy author_role" do
    assert_difference('AuthorRole.count', -1) do
      delete :destroy, id: @author_role
    end

    assert_redirected_to author_roles_path
  end
end
