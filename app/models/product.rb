class Product < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :unit_id
  validates_presence_of :category_id
  validates_numericality_of :unit_id, :only_integer => true
  validates_numericality_of :category_id , :only_integer => true
end
