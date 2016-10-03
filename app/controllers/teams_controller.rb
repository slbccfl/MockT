class TeamsController < ApplicationController
	def index
		@teams = Team.all
	end
	def show
		@team = Team.find_by(id: params[:id])
		@institutions = Institution.all
	end
	def new
		@team = Team.new
		@institutions = Institution.all
	end
	def create
		puts 'create action found in teams_controller.rb'
		team = Team.new(
			:name => params[:team][:name],
			:institution_id => params[:team][:institution_id],
		)

		if team.save
			redirect_to teams_path()
		else
			render status: 404, json: { error: "Could not create #{params[:id]} team" }
		end
	end
	def edit
		@team = Team.find_by(id: params[:id])
		@institutions = Institution.all
		@team_assignments = TeamAssignment.where(team_id: params[:id])
	end
	def update
		puts 'create action found in teams_controller.rb'
		institution = Institution.find_by(id: params[:institution_id])
		team = Team.find_by(id: params[:id])
		if team.update(
			:name => params[:team][:name],
			:institution_id => params[:team][:institution_id]
		)
			redirect_to teams_path(team)
		else
			render edit
		end
	end

end
