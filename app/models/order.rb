class Order < ActiveRecord::Base
  belongs_to :cart
  belongs_to :user

  state_machine initial: :awaiting_collection do
    event :collect do
      transition all => :collected
    end

    event :return do
      transition all => :returned
    end

    after_transition any => :returned do |order|
      order.cart.books.each do |book|
        book.borrowed_quantity -= 1
        book.save
      end
    end
  end
end
