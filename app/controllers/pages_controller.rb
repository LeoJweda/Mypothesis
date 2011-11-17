class PagesController < ApplicationController
  def home
    @hypotheses = []
    if !params[:subject] || params[:subject] == 'All'
      @hypotheses = Hypothesis.all
    else
      @hypotheses = Hypothesis.find(:all, :conditions => ["subject = ?", params[:subject]])
    end
    
    if params[:order] == 'best'
      @hypotheses.sort!{|a, b| b.score <=> a.score}
    end
  end

  def about
  end

  def faq
  end

  def contact
  end
end
