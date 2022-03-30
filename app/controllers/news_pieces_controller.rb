class NewsPiecesController < ApplicationController
  before_action :set_news_piece, only: %i[ show edit update destroy ]

  # GET /news_pieces or /news_pieces.json
  def index
    @news_pieces = NewsPiece.all
  end

  # GET /news_pieces/1 or /news_pieces/1.json
  def show
  end

  # GET /news_pieces/new
  def new
    @news_piece = NewsPiece.new
  end

  # GET /news_pieces/1/edit
  def edit
  end

  # POST /news_pieces or /news_pieces.json
  def create
    @news_piece = NewsPiece.new(news_piece_params)

    respond_to do |format|
      if @news_piece.save
        format.html { redirect_to news_piece_url(@news_piece), notice: "News piece was successfully created." }
        format.json { render :show, status: :created, location: @news_piece }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @news_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_pieces/1 or /news_pieces/1.json
  def update
    respond_to do |format|
      if @news_piece.update(news_piece_params)
        format.html { redirect_to news_piece_url(@news_piece), notice: "News piece was successfully updated." }
        format.json { render :show, status: :ok, location: @news_piece }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @news_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_pieces/1 or /news_pieces/1.json
  def destroy
    @news_piece.destroy

    respond_to do |format|
      format.html { redirect_to news_pieces_url, notice: "News piece was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_piece
      @news_piece = NewsPiece.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def news_piece_params
      params.require(:news_piece).permit(:title, :description, :text, :image, :date, :pinned)
    end
end
