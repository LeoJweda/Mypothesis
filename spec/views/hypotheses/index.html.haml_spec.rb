require 'spec_helper'

describe "hypotheses/index.html.haml" do
  before(:each) do
    assign(:hypotheses, [
      stub_model(Hypothesis,
        :title => "Title",
        :content => "MyText",
        :null_hypothesis => "MyText",
        :user_id => 1,
        :subject => "Subject"
      ),
      stub_model(Hypothesis,
        :title => "Title",
        :content => "MyText",
        :null_hypothesis => "MyText",
        :user_id => 1,
        :subject => "Subject"
      )
    ])
  end

  it "renders a list of hypotheses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
  end
end
