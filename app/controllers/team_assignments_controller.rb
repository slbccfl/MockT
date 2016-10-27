class TeamAssignmentsController < ApplicationController
	def index
		@team = Team.find_by(id: params[:team_id])
		@team_members = TeamMember.where(team_id: params[:team_id]).order(lastName: :asc)
	end
	def new
		@team = Team.find_by(id: params[:team_id])
		@team_members = TeamMember.where(team_id: params[:team_id]).order(lastName: :asc)
		@all_team_members = TeamMember.all.order(lastName: :asc)
	end
end
