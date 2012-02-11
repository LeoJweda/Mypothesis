module EvidencesHelper
  def up_vote_link_to(evidence)
    link_to content_tag(:i, '', :class => "icon-chevron-up#{(!current_user.voted_as_when_voted_for(evidence) || current_user.voted_as_when_voted_for(evidence) == nil) ? '' : ' icon-white'}"), up_vote_hypothesis_evidence_path(evidence.hypothesis, evidence), :method => :put, :remote => true, :class => "btn#{(!current_user.voted_as_when_voted_for(evidence) || current_user.voted_as_when_voted_for(evidence) == nil) ? '' : ' btn-success'} upvote"
  end
  
  def down_vote_link_to(evidence)
    link_to content_tag(:i, '', :class => "icon-chevron-down#{(current_user.voted_as_when_voted_for(evidence) || current_user.voted_as_when_voted_for(evidence) == nil) ? '' : ' icon-white'}"), down_vote_hypothesis_evidence_path(evidence.hypothesis, evidence), :method => :put, :remote => true, :class => "btn#{(current_user.voted_as_when_voted_for(evidence) || current_user.voted_as_when_voted_for(evidence) == nil) ? '' : ' btn-danger'} downvote"
  end
end
