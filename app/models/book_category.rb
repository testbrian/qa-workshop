class BookCategory < ActiveRecord::Base
  validates :name, presence: true
end
