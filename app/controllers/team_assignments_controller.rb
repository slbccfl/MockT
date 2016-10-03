class TeamAssignmentsController < ApplicationController
	def index
		@team = Team.find_by(id: params[:id])
		@team_members = TeamMember.where(team_id: params[:id])
	end
end
