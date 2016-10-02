class RoundsController < ApplicationController
	def create
		puts 'create action found in rounds_controller.rb'
		competition = Competition.find_by(id: params[:competition_id])
		round = Round.new()
		competition.rounds.push(round)
		round.number = competition.rounds.count

		if round.save
			redirect_to competition_path(competition)
		else
			render status: 404, json: { error: "Count not create #{params[:id]} round" }
		end
	end

	def destroy
		competition = Competition.find_by(id: params[:competition_id])
		round = competition.rounds.find_by(id: params[:id])
		if round.destroy
			redirect_to competition_path(competition)
		else
			render status: 404, json: { error: "Destroy cound not find round #{params[:id]}" }
		end
	end
	def show
		puts 'Competition: '+params[:competition_id]
		@competition = Competition.find_by(id: params[:competition_id])
		@round = Round.find_by(id: params[:id])
		@round_ballots = Ballot.where(round_id: params[:id])
		
	end
end
