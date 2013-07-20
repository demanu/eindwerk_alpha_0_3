require 'test_helper'

class BookFormatsControllerTest < ActionController::TestCase
  setup do
    @book_format = book_formats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_format" do
    assert_difference('BookFormat.count') do
      post :create, book_format: { format: @book_format.format }
    end

    assert_redirected_to book_format_path(assigns(:book_format))
  end

  test "should show book_format" do
    get :show, id: @book_format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_format
    assert_response :success
  end

  test "should update book_format" do
    put :update, id: @book_format, book_format: { format: @book_format.format }
    assert_redirected_to book_format_path(assigns(:book_format))
  end

  test "should destroy book_format" do
    assert_difference('BookFormat.count', -1) do
      delete :destroy, id: @book_format
    end

    assert_redirected_to book_formats_path
  end
end
