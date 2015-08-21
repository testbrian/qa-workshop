class BookDecorator < Draper::Decorator
  delegate_all

  def status
    available_quantity.zero? ? 'Borrowed' : 'Available'
  end

  def available_quantity
    quantity - borrowed_quantity
  end
end
