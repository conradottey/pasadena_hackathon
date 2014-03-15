require "spec_helper"

describe CollisionsController do
  describe "routing" do

    it "routes to #index" do
      get("/collisions").should route_to("collisions#index")
    end

    it "routes to #new" do
      get("/collisions/new").should route_to("collisions#new")
    end

    it "routes to #show" do
      get("/collisions/1").should route_to("collisions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/collisions/1/edit").should route_to("collisions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/collisions").should route_to("collisions#create")
    end

    it "routes to #update" do
      put("/collisions/1").should route_to("collisions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/collisions/1").should route_to("collisions#destroy", :id => "1")
    end

  end
end
