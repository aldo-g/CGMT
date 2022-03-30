require "application_system_test_case"

class NewsPiecesTest < ApplicationSystemTestCase
  setup do
    @news_piece = news_pieces(:one)
  end

  test "visiting the index" do
    visit news_pieces_url
    assert_selector "h1", text: "News Pieces"
  end

  test "creating a News piece" do
    visit news_pieces_url
    click_on "New News Piece"

    fill_in "Date", with: @news_piece.date
    fill_in "Description", with: @news_piece.description
    fill_in "Image", with: @news_piece.image
    check "Pinned" if @news_piece.pinned
    fill_in "Text", with: @news_piece.text
    fill_in "Title", with: @news_piece.title
    click_on "Create News piece"

    assert_text "News piece was successfully created"
    click_on "Back"
  end

  test "updating a News piece" do
    visit news_pieces_url
    click_on "Edit", match: :first

    fill_in "Date", with: @news_piece.date
    fill_in "Description", with: @news_piece.description
    fill_in "Image", with: @news_piece.image
    check "Pinned" if @news_piece.pinned
    fill_in "Text", with: @news_piece.text
    fill_in "Title", with: @news_piece.title
    click_on "Update News piece"

    assert_text "News piece was successfully updated"
    click_on "Back"
  end

  test "destroying a News piece" do
    visit news_pieces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "News piece was successfully destroyed"
  end
end
