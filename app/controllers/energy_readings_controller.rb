class EnergyReadingsController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  def create
    energy_reading = EnergyReading.new(house_id: params[:house_id], reading: params[:reading])
    house = House.where(id: params[:house_id]).first_or_initialize

    if energy_reading.save
      house.energy_cache += energy_reading.reading
      house.cache_size += 1
      house.average = house.energy_cache/house.cache_size
      house.save
      render plain: 'Reading successfully created'
    else
      render plain: 'Reading could not be created'
    end
  end
end
