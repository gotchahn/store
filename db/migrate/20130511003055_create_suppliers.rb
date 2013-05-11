class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :email
      t.datetime :founded_at

      t.timestamps
    end
  end
end
