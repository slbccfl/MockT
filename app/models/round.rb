class Round < ApplicationRecord
	belongs_to :competition
	has_many :ballots
	has_many :roles
end
