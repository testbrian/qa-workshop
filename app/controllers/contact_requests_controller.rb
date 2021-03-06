class ContactRequestsController < ApplicationController
  expose(:contact_request)

  def new
    add_breadcrumb 'Contact Us', new_contact_request_path
  end

  def create
    fail SizeDoesntMatter if contact_request_params[:text].size > 100
    ContactRequest.new(contact_request_params).save
    redirect_to root_path
  end

  private

  def contact_request_params
    params.require(:contact_request).permit(:text)
  end
end
