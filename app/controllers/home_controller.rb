class HomeController < ApplicationController
  expose_decorated(:books)

  def index
    @books = Book.order(:title).page params[:page]
  end

end
