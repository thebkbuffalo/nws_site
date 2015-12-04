class WaterTreatmentsController < ApplicationController
  before_action :set_water_treatment, only: [:show, :edit, :update, :destroy]

  # GET /water_treatments
  # GET /water_treatments.json
  def index
    @water_treatments = WaterTreatment.all
  end

  # GET /water_treatments/1
  # GET /water_treatments/1.json
  def show
    if !current_user
      redirect_to '/water_treatments'
    end
  end

  # GET /water_treatments/new
  def new
    if current_user
      @water_treatment = WaterTreatment.new
    else
      redirect_to '/water_treatments'
    end
  end

  # GET /water_treatments/1/edit
  def edit
  end

  # POST /water_treatments
  # POST /water_treatments.json
  def create
    @water_treatment = WaterTreatment.new(water_treatment_params)

    respond_to do |format|
      if @water_treatment.save
        format.html { redirect_to '/water_treatments', notice: 'Water treatment was successfully created.' }
        format.json { render :show, status: :created, location: @water_treatment }
      else
        format.html { render :new }
        format.json { render json: @water_treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_treatments/1
  # PATCH/PUT /water_treatments/1.json
  def update
    respond_to do |format|
      if @water_treatment.update(water_treatment_params)
        format.html { redirect_to '/water_treatments', notice: 'Water treatment was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_treatment }
      else
        format.html { render :edit }
        format.json { render json: @water_treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_treatments/1
  # DELETE /water_treatments/1.json
  def destroy
    @water_treatment.destroy
    respond_to do |format|
      format.html { redirect_to water_treatments_url, notice: 'Water treatment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_treatment
      @water_treatment = WaterTreatment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_treatment_params
      params.require(:water_treatment).permit(:house_system, :reverse_osmosis)
    end
end
