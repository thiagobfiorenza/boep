class Supplier < ActiveRecord::Base
	validates_presence_of :name
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	validates_length_of :phone, :in => 7..32, :allow_blank => false
	validates_numericality_of :phone
	validates_format_of :postcode, :with => /\d{8}/
end
