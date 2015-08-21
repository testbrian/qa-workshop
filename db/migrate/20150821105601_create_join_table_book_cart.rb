class CreateJoinTableBookCart < ActiveRecord::Migration
  def change
    create_join_table :books, :carts do |t|
      # t.index [:book_id, :cart_id]
      # t.index [:cart_id, :book_id]
    end
  end
end
