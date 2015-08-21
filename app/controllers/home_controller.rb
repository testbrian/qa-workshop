class HomeController < ApplicationController
  expose_decorated(:books)
  def index
  end
end
