class BookDecorator < Draper::Decorator
  delegate_all

  def status
    available_quantity == 1 ? false : true
  end

  def available_quantity
    quantity - borrowed_quantity
  end

  def short_description
    h.truncate(h.strip_tags(description), length: 255, separator: ' ')
  end
end
