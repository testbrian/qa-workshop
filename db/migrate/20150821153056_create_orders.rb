class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :cart, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :state

      t.timestamps null: false
    end
  end
end
