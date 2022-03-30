class InnovationGrantsController < ApplicationController
  before_action :set_innovation_grant, only: %i[ show edit update destroy ]

  # GET /innovation_grants or /innovation_grants.json
  def index
    @innovation_grants = InnovationGrant.all
  end

  # GET /innovation_grants/1 or /innovation_grants/1.json
  def show
  end

  # GET /innovation_grants/new
  def new
    @innovation_grant = InnovationGrant.new
  end

  # GET /innovation_grants/1/edit
  def edit
  end

  # POST /innovation_grants or /innovation_grants.json
  def create
    @innovation_grant = InnovationGrant.new(innovation_grant_params)

    respond_to do |format|
      if @innovation_grant.save
        format.html { redirect_to innovation_grant_url(@innovation_grant), notice: "Innovation grant was successfully created." }
        format.json { render :show, status: :created, location: @innovation_grant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @innovation_grant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /innovation_grants/1 or /innovation_grants/1.json
  def update
    respond_to do |format|
      if @innovation_grant.update(innovation_grant_params)
        format.html { redirect_to innovation_grant_url(@innovation_grant), notice: "Innovation grant was successfully updated." }
        format.json { render :show, status: :ok, location: @innovation_grant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @innovation_grant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /innovation_grants/1 or /innovation_grants/1.json
  def destroy
    @innovation_grant.destroy

    respond_to do |format|
      format.html { redirect_to innovation_grants_url, notice: "Innovation grant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_innovation_grant
      @innovation_grant = InnovationGrant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def innovation_grant_params
      params.require(:innovation_grant).permit(:project_name, :organisation_name, :project_description, :year_awarded, :link_url)
    end
end
