class PhasesController < ApplicationController
	def index
		@phases = Phase.where(competition_id: params[:competition_id]).order(order: :asc)
		@competition = Competition.find(params[:competition_id])
	end
	def new
		@phase = Phase.new
		@competition = Competition.find(params[:competition_id])
	end
	def create
		puts 'create action found in phases_controller.rb'
		competition = Competition.find_by(id: params[:competition_id])
		phase = Phase.new(
			:order => params[:phase][:order],
			:pTitle => params[:phase][:pTitle],
			:pScore1 => params[:phase][:pScore1],
			:pScore2 => params[:phase][:pScore2],
			:pScore3 => params[:phase][:pScore3],
			:dTitle => params[:phase][:dTitle],
			:dScore1 => params[:phase][:dScore1],
			:dScore2 => params[:phase][:dScore2],
			:dScore3 => params[:phase][:dScore3],
			)
		competition.phases.push(phase)

		if phase.save
			redirect_to competition_phases_path(competition)
		else
			render status: 404, json: { error: "Count not create #{params[:id]} phase" }
		end
	end
	def edit
		@phase = Phase.find_by(id: params[:id])
		@competition = Competition.find(params[:competition_id])
	end
	def update
		competition = Competition.find_by(id: params[:competition_id])
		phase = Phase.find_by(id: params[:id])

		if phase.update(
				:order => params[:phase][:order],
				:pTitle => params[:phase][:pTitle],
				:pScore1 => params[:phase][:pScore1],
				:pScore2 => params[:phase][:pScore2],
				:pScore3 => params[:phase][:pScore3],
				:dTitle => params[:phase][:dTitle],
				:dScore1 => params[:phase][:dScore1],
				:dScore2 => params[:phase][:dScore2],
				:dScore3 => params[:phase][:dScore3],
				)
			redirect_to competition_phases_path(competition)
		else
			render 'edit'
		end
	end
	def destroy
		competition = Competition.find_by(id: params[:competition_id])
		phase = competition.phases.find_by(id: params[:id])
		if phase.destroy
			redirect_to competition_phases_path(competition)
		else
			render status: 404, json: { error: "Destroy cound not find round #{params[:id]}" }
		end
	end
end
