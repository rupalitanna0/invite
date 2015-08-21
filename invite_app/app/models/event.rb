class Event < ActiveRecord::Base
	belongs_to :user
	has_many :photogallery
	has_many :rsvps
	has_many_and_belongs_to :guests
end
