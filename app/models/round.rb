class Round < ApplicationRecord
	belongs_to :competition
	has_many :ballots
end
