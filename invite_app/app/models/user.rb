class User < ActiveRecord::Base
  has_secure_password
  has_many :guests
  has_many :events
  has_many :rsvps, through :events
end
