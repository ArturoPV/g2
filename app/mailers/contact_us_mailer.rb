class ContactUsMailer < ApplicationMailer

  def request_item
    @purchase = params[:purchase]
    @house = House.find(@purchase.house_id)
    mail(to: "requestsg2@gmail.com", subject: "Request from" + @house.name)
  end
end
