class AddBorrowedQuantityToBook < ActiveRecord::Migration
  def change
    add_column :books, :borrowed_quantity, :integer, default: 0
  end
end
