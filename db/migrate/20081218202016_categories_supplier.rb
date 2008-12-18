class CategoriesSupplier < ActiveRecord::Migration
  def self.up
    create_table :categories_suppliers, :id => false do |t|
      t.references :category
      t.references :supplier
    end
  end

  def self.down
	  drop_table :categories_suppliers
  end
end
