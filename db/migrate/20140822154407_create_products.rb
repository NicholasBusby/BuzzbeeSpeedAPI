class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :companyId, null: false
      t.decimal :price, null: false
      t.decimal :cost, null: false
      t.decimal :msrp, null: false
      t.string :binLocation, null: false
      t.string :status, null: false
      t.text :details, null: false
      t.string :tags, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
    add_index :products, :id
    add_index :products, :name
  end
end
