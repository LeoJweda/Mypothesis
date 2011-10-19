require 'spec_helper'

describe "pages/contact.html.haml" do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  it "should have the right title" do
    render :file => "pages/contact.html.haml", :layout => "layouts/application.html.haml"
    assert_select('title', 'Mypothesis: Your Theory | Contact')
  end
end
