class TeamMember < ApplicationRecord
	has_many :team_assignments
	has_many :roles

	def fullName
		"#{firstName} #{lastName}"
	end
end
