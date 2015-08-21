class ContactRequestsController < ApplicationController
  expose(:contact_request)

  def create
    ContactRequest.new(contact_request_params).save
    redirect_to root_path
  end

  private
  def contact_request_params
    params.require(:contact_request).permit(:text)
  end
end
