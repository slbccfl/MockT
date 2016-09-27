class CompetitionRound < ApplicationRecord
	belongs_to :competition
	has_many :ballots
end
