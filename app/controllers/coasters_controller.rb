class CoastersController < ApplicationController
  before_action :set_coaster, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /coasters or /coasters.json
  def index
    @coasters = Coaster.all
  end

  # GET /coasters/1 or /coasters/1.json
  def show
  end

  # GET /coasters/new
  def new
    @coaster = Coaster.new
  end

  # GET /coasters/1/edit
  def edit
  end

  # POST /coasters or /coasters.json
  def create
    @coaster = Coaster.new(coaster_params)

    respond_to do |format|
      if @coaster.save
        format.html { redirect_to coaster_url(@coaster), notice: "Coaster was successfully created." }
        format.json { render :show, status: :created, location: @coaster }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coasters/1 or /coasters/1.json
  def update
    respond_to do |format|
      if @coaster.update(coaster_params)
        format.html { redirect_to coaster_url(@coaster), notice: "Coaster was successfully updated." }
        format.json { render :show, status: :ok, location: @coaster }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coasters/1 or /coasters/1.json
  def destroy
    @coaster.destroy

    respond_to do |format|
      format.html { redirect_to coasters_url, notice: "Coaster was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coaster
      @coaster = Coaster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coaster_params
      params.require(:coaster).permit(:quanity, :address, :latitude, :longitude, :date)
    end
end
