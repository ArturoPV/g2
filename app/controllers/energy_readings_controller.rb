class EnergyReadingsController < ApplicationController
  def new
    @energy_reading = EnergyReading.new
  end
  def create
    @energy_reading = EnergyReading.new(params.require(:energy_reading).permit(:id, :reading, :house_id))
    House.where(id: @energy_reading.house_id).first_or_create
    if @energy_reading.save
      House.find(@energy_reading.house_id)
      redirect_to house_path(@energy_reading.house_id)
    end
  end
end
