class AddUserToItemPurchaseLogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_purchase_logs, :user
  end
end
