require "spec_helper"

describe HypothesesController do
  describe "routing" do

    it "routes to #index" do
      get("/hypotheses").should route_to("hypotheses#index")
    end

    it "routes to #new" do
      get("/hypotheses/new").should route_to("hypotheses#new")
    end

    it "routes to #show" do
      get("/hypotheses/1").should route_to("hypotheses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hypotheses/1/edit").should route_to("hypotheses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hypotheses").should route_to("hypotheses#create")
    end

    it "routes to #update" do
      put("/hypotheses/1").should route_to("hypotheses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hypotheses/1").should route_to("hypotheses#destroy", :id => "1")
    end

  end
end
