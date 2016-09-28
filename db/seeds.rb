# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
local_competition = Competition.create!(
	title: 'Local Mock Trail Competition', 
	eventDatetime: DateTime.new(2016,10,22),
)
regional_competition = Competition.create!(
	title: 'Regional Mock Trail Competition', 
	eventDatetime: DateTime.new(2016,11,07),
)
national_competition = Competition.create!(
	title: 'National Mock Trail Competition', 
	eventDatetime: DateTime.new(2017,02,03),
)
[local_competition, regional_competition, national_competition].each do |competition|
	4.times do |i|
		competition.rounds << Round.new(number: i+1)
	end
end

