class BallotsController < ApplicationController
	def new
		@ballot = Ballot.new
	end

	def create
		puts 'create action found in ballots_controller.rb'
		round = Round.find_by(id: params[:round_id])
		ballot = Ballot.new()
		round.ballots.push(ballot)

		if ballot.save
			redirect_to competition_round_path(round.competition_id, params[:round_id])
		else
			render status: 404, json: { error: "Could not create #{params[:id]} ballot" }
		end
	end

	def show
		@ballot = Ballot.find_by(id: params[:id])	
	end
end
