class RemoveBuyerAndSellerFromItemPurchaseLogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :item_purchase_logs, :seller_user_id
    remove_column :item_purchase_logs, :buyer_user_id
  end
end
