require 'rails_helper'

RSpec.describe "item_purchase_logs/index", type: :view do
  before(:each) do
    assign(:item_purchase_logs, [
      ItemPurchaseLog.create!(),
      ItemPurchaseLog.create!()
    ])
  end

  it "renders a list of item_purchase_logs" do
    render
  end
end
