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
  
  def gravatar_for(user, options = { :size => 80 })
    gravatar_image_tag(user.email.downcase, :alt => user.name,
                                            :class => 'gravatar',
                                            :gravatar => options)
  end
end
