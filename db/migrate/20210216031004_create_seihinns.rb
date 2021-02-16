class CreateSeihinns < ActiveRecord::Migration[5.2]
  def change
    create_table :seihinns do |t|
      t.string :name
      t.integer :price
      t.string :vendor

      t.timestamps
    end
  end
end
