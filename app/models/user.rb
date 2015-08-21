class User < ActiveRecord::Base
  rolify :role_cname => 'Admin'
  after_save :create_cart_if_needed

  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :carts, dependent: :destroy
  has_many :orders

  def cart
    carts.last
  end

  def admin?
    has_role? :admin
  end

  private

  def create_cart_if_needed
    carts.create if cart.nil?
  end
end
