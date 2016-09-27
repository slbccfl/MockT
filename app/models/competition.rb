class Competition < ApplicationRecord
	has_many :competition_rounds, :dependent => :destroy
end
