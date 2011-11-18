module HypothesesHelper
  def filter_hypotheses(subject, order)
    @hypotheses = []
    if !subject || subject == 'All'
      @hypotheses = Hypothesis.all
    else
      @hypotheses = Hypothesis.find(:all, :conditions => ["subject = ?", subject])
    end
    
    if order == 'best'
      @hypotheses.sort!{|a, b| b.score <=> a.score}
    end
    @hypotheses
  end
end
