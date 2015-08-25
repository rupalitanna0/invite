class Event < ActiveRecord::Base
	belongs_to :user
	has_many :photogalleries
	has_many :rsvps
	has_many :guests
end
