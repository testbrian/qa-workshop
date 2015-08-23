class BookDecorator < Draper::Decorator
  delegate_all

  def status
    return false if quantity_less_than_one_or_in_cart?
    true
  end

  def books_left
    case available_quantity
    when 1
      message = "#{available_quantity} book available"
      message_class = 'label label-warning'
    when 2
      message = "#{available_quantity} books available"
      message_class = 'label label-material-orange'
    when 3...999
      message = "#{available_quantity} books available"
      message_class = 'label label-success'
    else
      message = 'Not available'
      message_class = 'label label-danger'
    end

    h.content_tag(:div, message, class: message_class)
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

  private

  def quantity_less_than_one_or_in_cart?
    available_quantity < 1 || user_already_has_this_book?
  end
end
