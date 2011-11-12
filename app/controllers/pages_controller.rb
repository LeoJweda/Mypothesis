class PagesController < ApplicationController
  def home
    @users = User.all
  end

  def about
  end

  def faq
  end

  def contact
  end
end
