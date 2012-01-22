module EvidencesHelper
  def vote_link_to(evidence, direction, visible)
    link_to "#{direction == 'up' ? 'Up' : 'Down'} Vote", ((direction == 'up') ? up_vote_hypothesis_evidence_path(evidence.hypothesis, evidence) : down_vote_hypothesis_evidence_path(evidence.hypothesis, evidence)), :method => :put, :remote => true, :class => "#{direction == 'up' ? 'upvote' : 'downvote'} #{visible ? '' : 'ui-helper-hidden-accessible'}"
  end
end
