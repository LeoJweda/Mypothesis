class Evidence < ActiveRecord::Base
  attr_accessible :title, :content, :supporting, :references, :hypothesis, :cached_votes_total, :cached_votes_up, :cached_votes_down
  
  belongs_to :hypothesis
  belongs_to :user
  
  validates :title, :presence => true
  validates :content, :presence => true
  validates :hypothesis_id, :presence => true
  validates :user_id, :presence => true
  
  acts_as_votable
  
  def score
    upvotes.size - downvotes.size
  end
end
