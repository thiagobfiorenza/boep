class Unit < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :abbr
end
