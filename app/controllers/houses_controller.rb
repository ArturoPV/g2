class HousesController < ApplicationController

  def index
    @houses = House.all.order("average ASC")
  end
  def create

  end
  def show
    @house = House.find(params[:id])
  end
end
