class Team < ApplicationRecord
	belongs_to :institution
	has_many :team_members
end
