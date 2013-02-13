require "spec_helper"

describe KolegijsController do
  describe "routing" do

    it "routes to #index" do
      get("/kolegijs").should route_to("kolegijs#index")
    end

    it "routes to #new" do
      get("/kolegijs/new").should route_to("kolegijs#new")
    end

    it "routes to #show" do
      get("/kolegijs/1").should route_to("kolegijs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/kolegijs/1/edit").should route_to("kolegijs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/kolegijs").should route_to("kolegijs#create")
    end

    it "routes to #update" do
      put("/kolegijs/1").should route_to("kolegijs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/kolegijs/1").should route_to("kolegijs#destroy", :id => "1")
    end

  end
end
