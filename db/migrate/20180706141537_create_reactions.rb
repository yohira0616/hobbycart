class CreateReactions < ActiveRecord::Migration[5.2]
  def change
    create_table :reactions do |t|
      t.references :user
      t.bigint target_id, null: false
      t.string target_type, null: false
      t.string stamp_code, null: false
      t.timestamps
    end
  end
end
