class SiteController < ApplicationController
	def home
		if current_user != nil
			redirect_to '/competitions'
		end
	end
end
