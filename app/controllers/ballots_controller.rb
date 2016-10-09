class BallotsController < ApplicationController
	def new
		@ballot = Ballot.new
		@competition = Competition.find_by(id: params[:competition_id])
		@round = Round.find_by(id: params[:round_id])
		@judges = Judge.all
		@scores = Score.where(ballot_id: @ballot.id)
	end

	def create
		puts 'create action found in ballots_controller.rb'
		ballot = Ballot.new()

		round = Round.find_by(id: params[:round_id])
		round.ballots.push(ballot)

		judge = Judge.find_by(id: params[:ballot][:judge_id])
		judge.ballots.push(ballot)

		if ballot.save
			redirect_to competition_round_path(params[:competition_id], params[:round_id])
		else
			render status: 404, json: { error: "Could not create #{params[:id]} ballot" }
		end
	end

	def edit
		@ballot = Ballot.find_by(id: params[:id])
		@judge = Judge.find_by(id: @ballot.judge_id)
		@round = Round.find_by(id: @ballot.round_id)
		@p_roles = Role.where(round_id: @round.id, side: "p")
		@d_roles = Role.where(round_id: @round.id, side: "d")
		@competition = Competition.find_by(id: @round.competition_id)	
		@phases = Phase.where(competition_id: @round.competition_id)
		@institution = Institution.find_by(id: @competition.institution_id)
		@scores = Score.where(ballot_id: @ballot.id)
	end

	def update
		puts 'found update!! in ballots_controller.rb'
		Score.where(ballot_id: params[:id]).destroy_all
		ballot = Ballot.find_by(id: params[:id])
		round = Round.find_by(id: ballot.round_id)
		phases = Phase.where(competition_id: round.competition_id)
		params[:scores].each do |score_element|
			score = Score.new(
				score: score_element[:score],
				role_id: score_element[:role_id],
				phase_id: score_element[:phase_id],
				ballot_id: params[:id],
			)
			score.save
		end
		
		redirect_to edit_ballot_path(params[:id])
	end
end
