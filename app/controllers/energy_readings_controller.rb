class EnergyReadingsController < ApplicationController
  def new
    @energy_reading = EnergyReading.new
  end
  def create
    @energy_reading = EnergyReading.new(params.require(:energy_reading).permit(:id, :reading, :house_id))
    house = House.where(id: @energy_reading.house_id).first_or_create
    if @energy_reading.save
      house.energy_cache += @energy_reading.reading
      house.cache_size += 1
      house.average = house.energy_cache/house.cache_size
      house.save
      redirect_to house_path(@energy_reading.house_id)
    end
  end
end
