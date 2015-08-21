class CreateCart < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :user_id, index: true
    end
  end
end
