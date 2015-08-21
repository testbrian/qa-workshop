class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.text :description
      t.string :cover
      t.string :publishing_house
      t.date :published_at
      t.integer :quantity
    end
  end
end
