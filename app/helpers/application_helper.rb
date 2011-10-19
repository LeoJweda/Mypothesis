module ApplicationHelper
  def title(page_title)
    content_for(:title) { ' | ' + page_title unless page_title.nil? }
  end
end
