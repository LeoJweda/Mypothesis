module ApplicationHelper
  def title(page_title)
    content_for(:title) { ' | ' + page_title unless page_title.nil? }
  end
  
  def style_for_key(key)
    if key == :error
      'error'
    elsif key == :alert
      'highlight'
    else
      'notice'
    end
  end
  
  def icon_for_key(key)
    if key == :error
      'alert'
    elsif key == :alert
      'info'
    else
      'check'
    end
  end
end
