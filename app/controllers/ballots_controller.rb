class BallotsController < ApplicationController
	def new
		@ballot = Ballot.new
		@competition = Competition.find_by(id: params[:competition_id])
		@round = Round.find_by(id: params[:round_id])
		@judges = Judge.all
	end

	def create
		puts 'create action found in ballots_controller.rb'
		round = Round.find_by(id: params[:round_id])
		ballot = Ballot.new()
		round.ballots.push(ballot)

		judge = Judge.new()
		judge.ballots.push(ballot)

		if ballot.save
			redirect_to competition_round_path(round.competition_id, params[:round_id])
		else
			render status: 404, json: { error: "Could not create #{params[:id]} ballot" }
		end
	end

	def show
		@ballot = Ballot.find_by(id: params[:id])
		@round = Round.find_by(id: @ballot.round_id)
		@competition = Competition.find_by(id: @round.competition_id)	
		@phases = Phase.where(competition_id: @round.competition_id)
	end
end
