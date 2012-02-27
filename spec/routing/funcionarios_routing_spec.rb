require "spec_helper"

describe FuncionariosController do
  describe "routing" do

    it "routes to #index" do
      get("/funcionarios").should route_to("funcionarios#index")
    end

    it "routes to #new" do
      get("/funcionarios/new").should route_to("funcionarios#new")
    end

    it "routes to #show" do
      get("/funcionarios/1").should route_to("funcionarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/funcionarios/1/edit").should route_to("funcionarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/funcionarios").should route_to("funcionarios#create")
    end

    it "routes to #update" do
      put("/funcionarios/1").should route_to("funcionarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/funcionarios/1").should route_to("funcionarios#destroy", :id => "1")
    end

  end
end
