require "spec_helper"

describe EvidencesController do
  describe "routing" do

    it "routes to #index" do
      get("/evidences").should route_to("evidences#index")
    end

    it "routes to #new" do
      get("/evidences/new").should route_to("evidences#new")
    end

    it "routes to #show" do
      get("/evidences/1").should route_to("evidences#show", :id => "1")
    end

    it "routes to #edit" do
      get("/evidences/1/edit").should route_to("evidences#edit", :id => "1")
    end

    it "routes to #create" do
      post("/evidences").should route_to("evidences#create")
    end

    it "routes to #update" do
      put("/evidences/1").should route_to("evidences#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/evidences/1").should route_to("evidences#destroy", :id => "1")
    end

  end
end
