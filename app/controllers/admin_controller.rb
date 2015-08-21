class AdminController < ApplicationController
  before_action :is_admin?
  expose_decorated(:orders)

  private

   def is_admin?
     return if current_user.try :admin?
     redirect_to root_url
   end
end
