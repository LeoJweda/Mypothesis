class Hypothesis < ActiveRecord::Base
  attr_accessible :title, :content, :null_hypothesis, :subject, :references
  
  belongs_to :user
  has_many :evidences
  
  validates :title, :presence => true
  validates :content, :presence => true
  validates :subject, :presence => true
  validates :user_id, :presence => true
  
  def score
    votes = 0
    evidences.each do |evidence|
      if evidence.score > 0
        if evidence.supporting
          votes += evidence.score
        else
          votes -= evidence.score
        end
      end
    end
    votes
  end
end
