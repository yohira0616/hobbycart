require 'rails_helper'

RSpec.describe "item_purchase_logs/edit", type: :view do
  before(:each) do
    @item_purchase_log = assign(:item_purchase_log, ItemPurchaseLog.create!())
  end

  it "renders the edit item_purchase_log form" do
    render

    assert_select "form[action=?][method=?]", item_purchase_log_path(@item_purchase_log), "post" do
    end
  end
end
