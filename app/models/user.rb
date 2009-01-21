class User < ActiveRecord::Base

  validates_presence_of :login
  validates_presence_of :password

end
