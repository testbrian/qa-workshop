class User < ActiveRecord::Base
  after_save :create_cart_if_needed

  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_one :cart, dependent: :destroy

  private
  def create_cart_if_needed
    create_cart if cart.nil?
  end
end
