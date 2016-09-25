class CompetitionsController < ApplicationController
	def index
		@competitions = Competition.all
	end
	def new
	end
	def show
		competition = Competition.find_by(id: params[:id])

		if competition
			render show
		else
		 	render status: 404, json: { error: "Competition #{params[:id]} not found" }
		end
	end
	def update
	end
	def destroy
	end
end
