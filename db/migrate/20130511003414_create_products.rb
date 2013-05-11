class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.decimal :price
      t.references :category
      t.references :supplier

      t.timestamps
    end
    add_index :products, :category_id
    add_index :products, :supplier_id
  end
end
