class DefaultState < ActiveRecord::Migration
  def change
    Order.all.each do |order|
      order.update(state: 'awaiting_collection')
    end
  end
end
