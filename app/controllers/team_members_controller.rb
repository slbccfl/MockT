class TeamMembersController < ApplicationController
	def index
		@team_members = TeamMember.all
	end
	def show
		@team_member = TeamMember.find_by(id: params[:id])
	end
	def new
		@team_member = Team.new
	end
	def create
		puts 'create action found in team_members_controller.rb'
		team_member = TeamMember.new(
			:firstName => params[:team_member][:firstName],
			:lastName => params[:team_member][:lastName],
		)

		if team_member.save
			redirect_to team_team_assignments_path()
		else
			render status: 404, json: { error: "Could not create #{params[:id]} team_member" }
		end
	end
	def edit
		@team_member = Team.find_by(id: params[:id])
	end
end
