class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :crypted_password
      t.string :salt

      # Twitter認証からの動線
      t.string :access_token
      t.string :access_token_secret
      t.string :uid
      t.string :provider

      t.string :screen_name, null: false
      t.string :name
      t.text :description
    end
  end
end

