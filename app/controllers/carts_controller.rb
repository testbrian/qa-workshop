class CartsController < ApplicationController
  expose(:cart) { current_user.cart }
end
