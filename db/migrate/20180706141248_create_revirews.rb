class CreateRevirews < ActiveRecord::Migration[5.2]
  def change
    create_table :revirews do |t|

      t.timestamps
    end
  end
end
