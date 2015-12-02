class CommercialsController < ApplicationController
  before_action :set_commercial, only: [:show, :edit, :update, :destroy]

  # GET /commercials
  # GET /commercials.json
  def index
    @commercials = Commercial.all
  end

  # GET /commercials/1
  # GET /commercials/1.json
  def show
    if !current_user
      redirect_to '/commercial'
    end
  end

  # GET /commercials/new
  def new
    if current_user
      @commercial = Commercial.new
    else
      redirect_to '/commercial'
    end
  end

  # GET /commercials/1/edit
  def edit
  end

  # POST /commercials
  # POST /commercials.json
  def create
    @commercial = Commercial.new(commercial_params)

    respond_to do |format|
      if @commercial.save
        format.html { redirect_to @commercial, notice: 'Commercial was successfully created.' }
        format.json { render :show, status: :created, location: @commercial }
      else
        format.html { render :new }
        format.json { render json: @commercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commercials/1
  # PATCH/PUT /commercials/1.json
  def update
    respond_to do |format|
      if @commercial.update(commercial_params)
        format.html { redirect_to @commercial, notice: 'Commercial was successfully updated.' }
        format.json { render :show, status: :ok, location: @commercial }
      else
        format.html { render :edit }
        format.json { render json: @commercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commercials/1
  # DELETE /commercials/1.json
  def destroy
    @commercial.destroy
    respond_to do |format|
      format.html { redirect_to commercials_url, notice: 'Commercial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commercial
      @commercial = Commercial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commercial_params
      params.require(:commercial).permit(:water_service)
    end
end
