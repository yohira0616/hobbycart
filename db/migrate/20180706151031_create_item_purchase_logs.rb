class CreateItemPurchaseLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :item_purchase_logs do |t|
      t.bigint :seller_user_id, null: false
      t.bigint :buyer_user_id, null: false
      t.references :item
      # 後から商品マスタをいじられても良いように値のコピーを持つ
      t.integer :price, null: false
      t.string :name, null: false
      t.timestamps
    end
  end
end
