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
  
  describe "validations" do
    it "should require a user id" do
      Hypothesis.new(@attr).should_not be_valid
    end
    
    it "should require nonblank title" do
      @user.hypotheses.build(:title => "  ").should_not be_valid
    end
    
    it "should require nonblank content" do
      @user.hypotheses.build(:content => "  ").should_not be_valid
    end
    
    it "should require nonblank subject" do
      @user.hypotheses.build(:subject => "  ").should_not be_valid
    end
  end
end
