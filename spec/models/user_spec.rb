require 'spec_helper'

describe User do
  before(:each) do
    @attr = { 
      :email => "user@example.com",
      :password => "foobar",
      :password_confirmation => "foobar",
      :remember_me => true
    }
  end
  
  describe "hypothesis associations" do

    before(:each) do
      @user = User.create(@attr)
    end

    it "should have a hypotheses attribute" do
      @user.should respond_to(:hypotheses)
    end
  end
end
