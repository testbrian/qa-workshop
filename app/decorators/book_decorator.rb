class BookDecorator < Draper::Decorator
  delegate_all

  def status
    if available_quantity < 1 || user_already_has_this_book?
      false
    else
      true
    end
  end

  def user_already_has_this_book?
    h.current_user.carts.last.books.include?(object)
  end

  def available_quantity
    quantity - borrowed_quantity
  end

  def short_description
    h.truncate(h.strip_tags(description), length: 255, separator: ' ')
  end
end
