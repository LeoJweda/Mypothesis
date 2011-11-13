require 'spec_helper'

describe "evidences/edit.html.haml" do
  before(:each) do
    @evidence = assign(:evidence, stub_model(Evidence,
      :title => "MyString",
      :content => "MyText",
      :supporting => false,
      :user_id => 1
    ))
  end

  it "renders the edit evidence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => evidences_path(@evidence), :method => "post" do
      assert_select "input#evidence_title", :name => "evidence[title]"
      assert_select "textarea#evidence_content", :name => "evidence[content]"
      assert_select "input#evidence_supporting", :name => "evidence[supporting]"
      assert_select "input#evidence_user_id", :name => "evidence[user_id]"
    end
  end
end
