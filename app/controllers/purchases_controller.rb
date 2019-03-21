class PurchasesController < ApplicationController
  def new
    @purchase = Purchase.new
  end
  def create
    house = House.find(User.find(session[:user_id]).house_id)
    @purchase = house.purchases.build(params.require(:purchase).permit(:name, :description, :link, :house_id))
    if @purchase.save
      ContactUsMailer.with(purchase: @purchase).request_item.deliver_now
      redirect_to house_path(house.id)
    end
  end
end
