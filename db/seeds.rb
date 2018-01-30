# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	Band.create(name: 'Aerosmith' , genre: 'Rock', explicit_lyrics: true)
	Venue.create(name: 'Beacon Theatre', city: 'New York City', state: 'NY', family_friendly: false)
	Event.create(date: '2018/01/10', band_id: 1, venue_id: 1)