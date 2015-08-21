class AddBookCategoryReferenceToBook < ActiveRecord::Migration
  def change
    add_reference :books, :book_category, index: true, foreign_key: true
  end
end
