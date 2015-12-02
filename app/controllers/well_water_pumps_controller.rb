class WellWaterPumpsController < ApplicationController
  before_action :set_well_water_pump, only: [:show, :edit, :update, :destroy]

  # GET /well_water_pumps
  # GET /well_water_pumps.json
  def index
    @well_water_pumps = WellWaterPump.all
  end

  # GET /well_water_pumps/1
  # GET /well_water_pumps/1.json
  def show
    if !current_user
      redirect_to '/well_water_pumps'
    end
  end

  # GET /well_water_pumps/new
  def new
    if current_user
      @well_water_pump = WellWaterPump.new
    else
      redirect_to '/well_water_pumps'
    end
  end

  # GET /well_water_pumps/1/edit
  def edit
  end

  # POST /well_water_pumps
  # POST /well_water_pumps.json
  def create
    @well_water_pump = WellWaterPump.new(well_water_pump_params)

    respond_to do |format|
      if @well_water_pump.save
        format.html { redirect_to @well_water_pump, notice: 'Well water pump was successfully created.' }
        format.json { render :show, status: :created, location: @well_water_pump }
      else
        format.html { render :new }
        format.json { render json: @well_water_pump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /well_water_pumps/1
  # PATCH/PUT /well_water_pumps/1.json
  def update
    respond_to do |format|
      if @well_water_pump.update(well_water_pump_params)
        format.html { redirect_to @well_water_pump, notice: 'Well water pump was successfully updated.' }
        format.json { render :show, status: :ok, location: @well_water_pump }
      else
        format.html { render :edit }
        format.json { render json: @well_water_pump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /well_water_pumps/1
  # DELETE /well_water_pumps/1.json
  def destroy
    @well_water_pump.destroy
    respond_to do |format|
      format.html { redirect_to well_water_pumps_url, notice: 'Well water pump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_well_water_pump
      @well_water_pump = WellWaterPump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def well_water_pump_params
      params.require(:well_water_pump).permit(:pump_service, :well_solutions)
    end
end
