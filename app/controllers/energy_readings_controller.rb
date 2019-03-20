class EnergyReadingsController < ApplicationController
  def new
    @energy_reading = EnergyReading.new
  end
  def create
    @energy_reading = EnergyReading.new(params.require(:energy_reading).permit(:id, :reading, :device_id))
    House.where(id: @energy_reading.device_id).first_or_create
    if @energy_reading.save
      redirect_to house_path(@energy_reading.device_id)
    end
  end
end
