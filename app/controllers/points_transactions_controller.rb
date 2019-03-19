class PointsTransactionsController < ApplicationController
    def new
      @points_transaction = PointsTransaction.new
    end

    def create
      @points_transaction = PointsTransaction.new(params.require(:points_transaction).permit(:house_id, :ammount, :in))
      if @points_transaction.save
        house = House.find(@points_transaction.house_id)
        house.points += @points_transaction.ammount
        house.save
        redirect_to house_path(house.id)
      end
    end
end
