class Book < ActiveRecord::Base
  validates :author, :title, :publishing_house, :published_at, :quantity, :book_category, presence: true
  belongs_to :book_category
  has_many :carts
end
