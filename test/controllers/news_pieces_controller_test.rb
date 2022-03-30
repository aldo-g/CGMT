require "test_helper"

class NewsPiecesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_piece = news_pieces(:one)
  end

  test "should get index" do
    get news_pieces_url
    assert_response :success
  end

  test "should get new" do
    get new_news_piece_url
    assert_response :success
  end

  test "should create news_piece" do
    assert_difference('NewsPiece.count') do
      post news_pieces_url, params: { news_piece: { date: @news_piece.date, description: @news_piece.description, image: @news_piece.image, pinned: @news_piece.pinned, text: @news_piece.text, title: @news_piece.title } }
    end

    assert_redirected_to news_piece_url(NewsPiece.last)
  end

  test "should show news_piece" do
    get news_piece_url(@news_piece)
    assert_response :success
  end

  test "should get edit" do
    get edit_news_piece_url(@news_piece)
    assert_response :success
  end

  test "should update news_piece" do
    patch news_piece_url(@news_piece), params: { news_piece: { date: @news_piece.date, description: @news_piece.description, image: @news_piece.image, pinned: @news_piece.pinned, text: @news_piece.text, title: @news_piece.title } }
    assert_redirected_to news_piece_url(@news_piece)
  end

  test "should destroy news_piece" do
    assert_difference('NewsPiece.count', -1) do
      delete news_piece_url(@news_piece)
    end

    assert_redirected_to news_pieces_url
  end
end
