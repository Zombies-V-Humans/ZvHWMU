require "spec_helper"

describe ZombieGroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/zombie_groups").should route_to("zombie_groups#index")
    end

    it "routes to #new" do
      get("/zombie_groups/new").should route_to("zombie_groups#new")
    end

    it "routes to #show" do
      get("/zombie_groups/1").should route_to("zombie_groups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/zombie_groups/1/edit").should route_to("zombie_groups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/zombie_groups").should route_to("zombie_groups#create")
    end

    it "routes to #update" do
      put("/zombie_groups/1").should route_to("zombie_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/zombie_groups/1").should route_to("zombie_groups#destroy", :id => "1")
    end

  end
end
