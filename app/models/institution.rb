class Institution < ApplicationRecord
	has_many :competitions
	has_many :teams
end
