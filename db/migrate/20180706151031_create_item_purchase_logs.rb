class CreateItemPurchaseLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :item_purchase_logs do |t|

      t.timestamps
    end
  end
end
