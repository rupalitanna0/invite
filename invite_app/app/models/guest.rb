class Guest < ActiveRecord::Base
  has_secure_password
  belongs_to :user
  has_many_and_belongs_to :events
end
