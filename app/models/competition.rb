class Competition < ApplicationRecord
	has_many :rounds, :dependent => :destroy
	has_many :phases, :dependent => :destroy
end
