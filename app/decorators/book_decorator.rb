class BookDecorator < Draper::Decorator
  delegate_all

  def status
    if available_quantity == 1 || user_already_have_such_category_in_cart?
      false
    else
      true
    end
  end

  def user_already_have_such_category_in_cart?
    h.current_user.cart.books.map { |book| book.book_category }.include?(book_category)
  end

  def available_quantity
    quantity - borrowed_quantity
  end

  def short_description
    h.truncate(h.strip_tags(description), length: 255, separator: ' ')
  end
end
