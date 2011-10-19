require 'spec_helper'

describe "pages/about.html.haml" do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  it "should have the right title" do
    render :file => "pages/about.html.haml", :layout => "layouts/application.html.haml"
    assert_select('title', "Mypothesis | About")
  end
end
