class Unit < ActiveRecord::Base
  has_many :products  

  validates_presence_of :name
  validates_presence_of :abbr
end
