class CartsController < ApplicationController
  before_action :authenticate_user!
  respond_to :json
  expose(:book)

  def index
    add_breadcrumb 'Your bookshelf', carts_path
  end

  def add_book
    book.update(borrowed_quantity: book.borrowed_quantity + 1)
    current_user.cart.books << book
    redirect_to root_path, notice: 'Book removed from cart!'
  end

  def remove_book
    book.update(borrowed_quantity: book.borrowed_quantity - 1)
    current_user.cart.remove_book(book)
    head :ok
  end
end
