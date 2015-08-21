class User < ActiveRecord::Base
  after_save :create_cart_if_needed

  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :carts, dependent: :destroy
  has_many :orders

  def cart
    carts.last
  end

  private

  def create_cart_if_needed
    carts.create if cart.nil?
  end
end
