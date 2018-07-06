require 'rails_helper'

RSpec.describe "item_purchase_logs/new", type: :view do
  before(:each) do
    assign(:item_purchase_log, ItemPurchaseLog.new())
  end

  it "renders new item_purchase_log form" do
    render

    assert_select "form[action=?][method=?]", item_purchase_logs_path, "post" do
    end
  end
end
