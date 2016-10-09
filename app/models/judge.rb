class Judge < ApplicationRecord
	has_many :ballots

	def fullName
		"#{firstName} #{lastName}"
	end
end
