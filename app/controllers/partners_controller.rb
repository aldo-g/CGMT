class PartnersController < ApplicationController
  before_action :set_partner, only: %i[ show edit update destroy ]

  # GET /partners or /partners.json
  def index
    @partners = Partner.all
  end

  # GET /partners/1 or /partners/1.json
  def show
  end

  # GET /partners/new
  def new
    @partner = Partner.new
  end

  # GET /partners/1/edit
  def edit
  end

  # POST /partners or /partners.json
  def create
    @partner = Partner.new(partner_params)

    respond_to do |format|
      if @partner.save
        format.html { redirect_to partner_url(@partner), notice: "Partner was successfully created." }
        format.json { render :show, status: :created, location: @partner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partners/1 or /partners/1.json
  def update
    respond_to do |format|
      if @partner.update(partner_params)
        format.html { redirect_to partner_url(@partner), notice: "Partner was successfully updated." }
        format.json { render :show, status: :ok, location: @partner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partners/1 or /partners/1.json
  def destroy
    @partner.destroy

    respond_to do |format|
      format.html { redirect_to partners_url, notice: "Partner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner
      @partner = Partner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def partner_params
      params.require(:partner).permit(:organisation_name, :organisation_description, :link_url, :image)
    end
end
