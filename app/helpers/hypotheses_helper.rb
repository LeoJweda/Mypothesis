module HypothesesHelper
  def score(hypothesis)
    votes = 0
    hypothesis.evidences.each do |evidence|
      if (evidence.upvotes.size - evidence.downvotes.size) > 0
        if evidence.supporting
          votes += (evidence.upvotes.size - evidence.downvotes.size)
        else
          votes -= (evidence.upvotes.size - evidence.downvotes.size)
        end
      end
    end
    votes
  end
end
