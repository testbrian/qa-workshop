class OrderDecorator < Draper::Decorator
  delegate_all

  def librarian_action
    css = 'btn btn-primary'
    case state
    when 'awaiting_collection'
      h.link_to 'Collect', '#', class: css
    when 'collected'
      h.link_to 'Return', '#', class: css
    when 'returned'
      'returned'
    end
  end
end
