class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user
      t.references :item
      t.text :body, null: false

      t.timestamps
    end
  end
end
