class AddDefaultStateToOrders < ActiveRecord::Migration
  def change
    change_column :orders, :state, :string, default: 'awaiting_collection'
  end
end
