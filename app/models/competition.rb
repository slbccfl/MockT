class Competition < ApplicationRecord
	has_many :rounds, :dependent => :destroy
	has_many :phases, :dependent => :destroy
	belongs_to :case
	belongs_to :institution
end
