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
		puts 'Rounds_controller, show action, Competition: '+params[:competition_id]
		@competition = Competition.find_by(id: params[:competition_id])
		@round = Round.find_by(id: params[:id])
		@round_ballots = Ballot.where(round_id: params[:id])
		@round_roles = Role.where(round_id: params[:id])
	end
	def edit
		@competition = Competition.find_by(id: params[:competition_id])
		@round = Round.find_by(id: params[:id])
		@teams = Team.all
	end
	def update
		puts 'Rounds_controller, update action, Competition: '+params[:competition_id]
		competition = Competition.find_by(id: params[:competition_id])
		round = Round.find_by(id: params[:id])
		if round.update!(p_team_id: params[:round][:p_team_id],
				d_team_id: params[:round][:d_team_id])
			redirect_to competition_round_path(params[:competition_id], params[:round_id])
		else
			render 'edit'
		end
	end
end
