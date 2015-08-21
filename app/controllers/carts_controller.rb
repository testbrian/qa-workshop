class CartsController < ApplicationController
  before_action :authenticate_user!
  expose(:book)

  def add_book
    current_user.cart.books << book
    redirect_to root_path, notice: 'Book removed from cart!'
  end
end
