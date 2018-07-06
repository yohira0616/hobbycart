require "rails_helper"

RSpec.describe RevirewsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/revirews").to route_to("revirews#index")
    end

    it "routes to #new" do
      expect(:get => "/revirews/new").to route_to("revirews#new")
    end

    it "routes to #show" do
      expect(:get => "/revirews/1").to route_to("revirews#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/revirews/1/edit").to route_to("revirews#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/revirews").to route_to("revirews#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/revirews/1").to route_to("revirews#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/revirews/1").to route_to("revirews#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/revirews/1").to route_to("revirews#destroy", :id => "1")
    end

  end
end
