class Hypothesis < ActiveRecord::Base
  attr_accessible :title, :content, :null_hypothesis, :subject
  
  belongs_to :user
end
