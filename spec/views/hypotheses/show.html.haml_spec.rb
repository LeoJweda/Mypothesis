require 'spec_helper'

describe "hypotheses/show.html.haml" do
  before(:each) do
    @hypothesis = assign(:hypothesis, stub_model(Hypothesis,
      :title => "Title",
      :content => "MyText",
      :null_hypothesis => "MyText",
      :user_id => 1,
      :subject => "Subject"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subject/)
  end
end
