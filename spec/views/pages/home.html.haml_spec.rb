require 'spec_helper'

describe "pages/home.html.haml" do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  it "should have the right title" do
    render :file => "pages/home.html.haml", :layout => "layouts/application.html.haml"
    assert_select('title', 'Mypothesis: Your Theory')
  end
end
