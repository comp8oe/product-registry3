class CreateProduct3s < ActiveRecord::Migration[5.2]
  def change
    create_table :product3s do |t|
      t.string :name
      t.integer :price
      t.string :vendor

      t.timestamps
    end
  end
end
