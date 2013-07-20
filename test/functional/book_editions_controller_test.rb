require 'test_helper'

class BookEditionsControllerTest < ActionController::TestCase
  setup do
    @book_edition = book_editions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_editions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_edition" do
    assert_difference('BookEdition.count') do
      post :create, book_edition: { bookwork_id: @book_edition.bookwork_id, format: @book_edition.format, isbn_nr: @book_edition.isbn_nr, publisher_id: @book_edition.publisher_id }
    end

    assert_redirected_to book_edition_path(assigns(:book_edition))
  end

  test "should show book_edition" do
    get :show, id: @book_edition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_edition
    assert_response :success
  end

  test "should update book_edition" do
    put :update, id: @book_edition, book_edition: { bookwork_id: @book_edition.bookwork_id, format: @book_edition.format, isbn_nr: @book_edition.isbn_nr, publisher_id: @book_edition.publisher_id }
    assert_redirected_to book_edition_path(assigns(:book_edition))
  end

  test "should destroy book_edition" do
    assert_difference('BookEdition.count', -1) do
      delete :destroy, id: @book_edition
    end

    assert_redirected_to book_editions_path
  end
end
