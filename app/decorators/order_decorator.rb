class OrderDecorator < Draper::Decorator
  delegate_all

  def librarian_action(order)
    css = 'btn btn-success btn-xs'
    case state
    when 'awaiting_collection'
      h.link_to 'Collect', h.collect_order_path(order), class: css, method: :post
    when 'collected'
      h.link_to 'Return', h.return_order_path(order), class: css, method: :post
    end
  end
end
