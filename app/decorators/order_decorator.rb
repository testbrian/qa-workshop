class OrderDecorator < Draper::Decorator
  delegate_all

  def librarian_action(order)
    css = 'btn btn-primary'
    case state
    when 'awaiting_collection'
      h.link_to 'Collect', h.collect_order_path(order), class: css, method: :post
    when 'collected'
      h.link_to 'Return', h.return_order_path(order), class: css, method: :post
    when 'returned'
      'returned'
    end
  end
end
