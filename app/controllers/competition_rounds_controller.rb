class CompetitionRoundsController < ApplicationController
	# def new
	# 	@competition = Competition.find_by(id: params[:id])

	# 	if @competition
	# 		redirect_to competition_competition_rounds_path(@competition), method: :update
	# 	else
	# 		render status: 404, json: { error: "Competition #{params[:id]} not found" }
	# 	end
	# end

	def create
		puts 'create action foun in competition_rounds_controller.rb'
		competition = Competition.find_by(id: params[:competition_id])
		round = CompetitionRound.new()
		competition.competition_rounds.push(round)
		round.number = competition.competition_rounds.count

		if round.save
			redirect_to competition_path(competition)
		else
			render status: 404, json: { error: "Count not create #{params[:id]} round" }
		end
	end

	def destroy
		competition = Competition.find_by(id: params[:competition_id])
		round = competition.competition_rounds.find_by(id: params[:id])
		if round.destroy
			redirect_to competition_path(competition)
		else
			render status: 404, json: { error: "Destroy cound not find round #{params[:id]}" }
		end
	end
end
