class Ballot < ApplicationRecord
	belongs_to :round
	belongs_to :judge
end
