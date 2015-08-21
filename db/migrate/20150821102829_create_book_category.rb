class CreateBookCategory < ActiveRecord::Migration
  def change
    create_table :book_categories do |t|
      t.string :name
    end
  end
end
