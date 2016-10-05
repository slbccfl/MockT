class Role < ApplicationRecord
	belongs_to :team_member
	belongs_to :round
	has_many :scores
end
