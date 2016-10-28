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
	def create
		puts 'create action found in team_assignments_controller.rb'
		
		params[:team_assigns][].each do | team_member_id |
			if TeamAssignment.find_by(team_id: params[:team_id], team_member_id: team_member_id) == nil 
				team_assignment = TeamAssignments.new(
					:team_id => params[:team_id],
					:team_member_id => team_member_id
				)
				if !(team_assignment.save!)
					render status: 404, json: { error: "Could not create #{params[:id]} team_member" }
				end
			end
		end

		redirect_to edit_team_path(params[:team_id])
	end
end
