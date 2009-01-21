class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name
      t.string :document
      t.string :email
      t.date :birth
      t.string :address
      t.string :city
      t.string :state
      t.string :phone
      t.string :postcode
      t.string :mobile

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
