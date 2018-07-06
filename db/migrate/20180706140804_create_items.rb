class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description
      t.integer :price, null: false
      t.integer :status, null: false
      t.timestamps
    end
  end
end
