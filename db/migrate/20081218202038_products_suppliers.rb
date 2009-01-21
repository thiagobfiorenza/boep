class ProductsSuppliers < ActiveRecord::Migration
  def self.up
    create_table :products_suppliers, :id => false do |t|
      t.references :product
      t.references :supplier
    end
  end

  def self.down
	  drop_table :products_suppliers
  end
end
