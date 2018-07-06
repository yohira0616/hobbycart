require "rails_helper"

RSpec.describe ItemPurchaseLogsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/item_purchase_logs").to route_to("item_purchase_logs#index")
    end

    it "routes to #new" do
      expect(:get => "/item_purchase_logs/new").to route_to("item_purchase_logs#new")
    end

    it "routes to #show" do
      expect(:get => "/item_purchase_logs/1").to route_to("item_purchase_logs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/item_purchase_logs/1/edit").to route_to("item_purchase_logs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/item_purchase_logs").to route_to("item_purchase_logs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/item_purchase_logs/1").to route_to("item_purchase_logs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/item_purchase_logs/1").to route_to("item_purchase_logs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/item_purchase_logs/1").to route_to("item_purchase_logs#destroy", :id => "1")
    end

  end
end
