require 'spec_helper'

describe "hypotheses/edit.html.haml" do
  before(:each) do
    @hypothesis = assign(:hypothesis, stub_model(Hypothesis,
      :title => "MyString",
      :content => "MyText",
      :null_hypothesis => "MyText",
      :user_id => 1,
      :subject => "MyString"
    ))
  end

  it "renders the edit hypothesis form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hypotheses_path(@hypothesis), :method => "post" do
      assert_select "input#hypothesis_title", :name => "hypothesis[title]"
      assert_select "textarea#hypothesis_content", :name => "hypothesis[content]"
      assert_select "textarea#hypothesis_null_hypothesis", :name => "hypothesis[null_hypothesis]"
      assert_select "input#hypothesis_user_id", :name => "hypothesis[user_id]"
      assert_select "input#hypothesis_subject", :name => "hypothesis[subject]"
    end
  end
end
