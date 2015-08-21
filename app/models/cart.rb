class Cart < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :books

  def remove_book(book)
    # bug here
  end
end
