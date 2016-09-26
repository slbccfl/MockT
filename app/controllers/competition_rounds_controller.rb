class CompetitionRoundsController < ApplicationController
	def new
		@competition = Competition.find_by(id: params[:id])

		if @competition
			redirect_to competition_competition_rounds_path(@competition), method: :update
		else
			render status: 404, json: { error: "Competition #{params[:id]} not found" }
		end
	end

	def create
		competition = Competition.find_by(id: params[:competition_id])

		if competition.competition_rounds.create
			redirect_to competition_path(competition)
		else
			render status: 404, json: { error: "Count not create #{params[:id]} round" }
		end
	end

	def destroy
		competition = Competition.find_by(id: params[:competition_id])
		round = CompetitionRound.find_by(id: params[:id])
		if round.destroy
			redirect_to competition_path(competition)
		else
			render status: 404, json: { error: "Destroy cound not find round #{params[:id]}" }
		end
	end
end
