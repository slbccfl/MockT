class CompetitionsController < ApplicationController
	def index
		@competitions = Competition.all
	end
	def new
	end
	def show
	end
	def update
	end
	def destroy
	end
end
