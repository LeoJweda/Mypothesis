class Hypothesis < ActiveRecord::Base
  attr_accessible :title, :content, :null_hypothesis, :subject
  
  belongs_to :user
  
  validates :title, :presence => true
  validates :content, :presence => true
  validates :subject, :presence => true
  validates :user_id, :presence => true
end
