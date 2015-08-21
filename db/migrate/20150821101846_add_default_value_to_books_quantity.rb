class AddDefaultValueToBooksQuantity < ActiveRecord::Migration
  def change
    change_column :books, :quantity, :integer, default: 1
  end
end
