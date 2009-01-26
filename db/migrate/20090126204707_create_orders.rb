class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.references :customer
      t.date :enddate
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
