class Venue < ApplicationRecord
	has_many :bands, :through => :events
	has_many :events 
	validates :name, presence: true
	validates :city, presence: true
	validates :state, presence: true
end
