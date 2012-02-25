module ApplicationHelper
  def title(page_title)
    content_for(:title) { ' | ' + page_title unless page_title.nil? }
  end
  
  def gravatar_for(user, options = { :size => 80 })
    link_to(gravatar_image_tag(user.email.downcase, :alt => user.full_name, :class => 'thumbnail',:gravatar => options), user)
  end
end
