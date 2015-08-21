class AddReturnedToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :returned, :boolean, default: false
  end
end
