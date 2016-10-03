class TeamMember < ApplicationRecord
	has_many :team_assignments
	belongs_to :team
end
