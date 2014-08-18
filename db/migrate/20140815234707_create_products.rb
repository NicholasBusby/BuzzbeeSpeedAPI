class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :manufacture
      t.decimal :price
      t.decimal :cost
      t.decimal :sale_price
      t.text :name

      t.timestamps
    end
  end
end
