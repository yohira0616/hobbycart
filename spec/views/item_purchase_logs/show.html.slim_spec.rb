require 'rails_helper'

RSpec.describe "item_purchase_logs/show", type: :view do
  before(:each) do
    @item_purchase_log = assign(:item_purchase_log, ItemPurchaseLog.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
