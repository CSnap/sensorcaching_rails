class SensorDataController < ApplicationController
  include Combinedcrud
  before_action :set_sensor_datum, only: [:show, :edit, :update, :destroy]

  # GET /sensor_data
  # GET /sensor_data.json
  def index
    @sensor_data = SensorDatum.all
  end

  # GET /sensor_data/1
  # GET /sensor_data/1.json
  def show
  end

  # GET /sensor_data/new
  def new
    @sensor_datum = SensorDatum.new
  end

  # GET /sensor_data/1/edit
  def edit
  end

  # POST /sensor_data
  # POST /sensor_data.json
  def create
    @sensor_datum = SensorDatum.new(sensor_datum_params)

    create_save(@sensor_datum, "Sensor datum")
  end

  # PATCH/PUT /sensor_data/1
  # PATCH/PUT /sensor_data/1.json
  def update
    update_save(@sensor_datum, sensor_datum_params, "Sensor datum")
  end

  # DELETE /sensor_data/1
  # DELETE /sensor_data/1.json
  def destroy
    destroy_and_redirect(@sensor_datum, sensor_data_url)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor_datum
      @sensor_datum = SensorDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensor_datum_params
      params.require(:sensor_datum).permit(:sensor_find_id, :timestamp, :data)
    end
end
