# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Case.create!(caseName: "This Year's Case")

Institution.create!(name: 'Cedar Rapids High School')
Institution.create!(name: 'Linn Mar High School')
Institution.create!(name: 'West High School')
Institution.create!(name: 'Northern University')
Institution.create!(name: 'Western University')
Institution.create!(name: 'Southern University')
Institution.create!(name: 'Eastern University')

local_competition = Competition.create!(
	title: 'Local Mock Trail Competition', 
	institution_id: 1,
	case_id: 1,
	eventDatetime: DateTime.new(2016,10,22),
)
regional_competition = Competition.create!(
	title: 'Regional Mock Trail Competition', 
	institution_id: 5,
	case_id: 1,
	eventDatetime: DateTime.new(2016,11,07),
)
national_competition = Competition.create!(
	title: 'National Mock Trail Competition', 
	institution_id: 6,
	case_id: 1,
	eventDatetime: DateTime.new(2017,02,03),
)
[local_competition, regional_competition, national_competition].each do |competition|
	4.times do |i|
		competition.rounds << Round.new(number: i+1)
	end
end

competition = Competition.last
phase_data = []
phase_data[1] = competition.phases.create!(
	order: 1,
	pTitle: 'Opening Statements',
	pScore1: 'Attorney',
	pScore2: '',
	pScore3: '',
	dTitle: 'Opening Statements',
	dScore1: 'Attorney',
	dScore2: '',
	dScore3: '',
	)
phase_data[2] = competition.phases.create!(
	order: 2,
	pTitle: 'Plantiff Witness 1',
	pScore1: 'Attorney',
	pScore2: 'Witness',
	pScore3: 'Argument',
	dTitle: 'Plantiff Witness 1 Cross',
	dScore1: 'Attorney',
	dScore2: 'Witness',
	dScore3: '',
	)
phase_data[3] = competition.phases.create!(
	order: 3,
	pTitle: 'Plantiff Witness 2',
	pScore1: 'Attorney',
	pScore2: 'Witness',
	pScore3: 'Argument',
	dTitle: 'Plantiff Witness 2 Cross',
	dScore1: 'Attorney',
	dScore2: 'Witness',
	dScore3: '',
	)
phase_data[4] = competition.phases.create!(
	order: 4,
	pTitle: 'Plantiff Witness 3',
	pScore1: 'Attorney',
	pScore2: 'Witness',
	pScore3: 'Argument',
	dTitle: 'Plantiff Witness 3 Cross',
	dScore1: 'Attorney',
	dScore2: 'Witness',
	dScore3: '',
	)
phase_data[5] = competition.phases.create!(
	order: 5,
	pTitle: 'Defense Witness 1',
	pScore1: 'Attorney',
	pScore2: 'Witness',
	pScore3: '',
	dTitle: 'Defense Witness 1 Cross',
	dScore1: 'Attorney',
	dScore2: 'Witness',
	dScore3: 'Argument',
	)
phase_data[6] = competition.phases.create!(
	order: 6,
	pTitle: 'Defense Witness 2',
	pScore1: 'Attorney',
	pScore2: 'Witness',
	pScore3: '',
	dTitle: 'Defense Witness 2 Cross',
	dScore1: 'Attorney',
	dScore2: 'Witness',
	dScore3: 'Argument',
	)
phase_data[7] = competition.phases.create!(
	order: 7,
	pTitle: 'Defense Witness 3',
	pScore1: 'Attorney',
	pScore2: 'Witness',
	pScore3: '',
	dTitle: 'Defense Witness 3 Cross',
	dScore1: 'Attorney',
	dScore2: 'Witness',
	dScore3: 'Argument',
	)
phase_data[8] = competition.phases.create!(
	order: 8,
	pTitle: 'Closing Statements',
	pScore1: 'Attorney',
	pScore2: '',
	pScore3: '',
	dTitle: 'Closing Statements',
	dScore1: 'Attorney',
	dScore2: '',
	dScore3: '',
	)

