class CreateSuppliers < ActiveRecord::Migration
  def self.up
    create_table :suppliers do |t|
      t.string :name
      t.string :document
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :phone
      t.string :postcode

      t.timestamps
    end
  end

  def self.down
    drop_table :suppliers
  end
end
