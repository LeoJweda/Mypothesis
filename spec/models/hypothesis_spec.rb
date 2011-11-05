require 'spec_helper'

describe Hypothesis do
  before(:each) do
    @user = Factory(:user)
    @attr = { :title => "content for title", :content => "value for content", :null_hypothesis => "content for null hypothesis", :subject => "Psychology" }
  end
  
  it "should create a new instance given valid attributes" do
    @user.hypotheses.create!(@attr)
  end
  
  describe "user associations" do
    before(:each) do
      @hypothesis = @user.hypotheses.create(@attr)
    end
    
    it "should have a user attribute" do
      @hypothesis.should respond_to(:user)
    end
    
    it "should have the right associated user" do
      @hypothesis.user_id.should == @user.id
      @hypothesis.user.should == @user
    end
  end
end
