class Customer < ActiveRecord::Base
	validates_presence_of :name
	validates_numericality_of :document
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	validates_presence_of :address
	validates_presence_of :city
	validates_presence_of :state
	validates_length_of :phone, :in => 7..32, :allow_blank => false
	validates_numericality_of :phone
	validates_length_of :postcode, :in => 7..10, :allow_blank => false
	validates_length_of :mobile, :in => 7..32, :allow_blank => false
	validates_numericality_of :mobile

end
