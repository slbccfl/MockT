class TeamMember < ApplicationRecord
	has_many :team_assignments
	has_many :roles
	belongs_to :team

	def fullName
		"#{firstName} #{lastName}"
	end
end
