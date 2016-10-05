class RolesController < ApplicationController
	def new
		@role = Role.new
		@competition = Competition.find_by(id: params[:competition_id])
		@round = Round.find_by(id: params[:round_id])
		@team_members = TeamMember.all
	end
	def create
		puts 'create action found in roles_controller.rb'
		role = Role.new(name: params[:role][:name],team_member_id: (params[:role][:team_member_id]).to_i,)

		round = Round.find_by(id: params[:round_id])
		round.roles.push(role)

		if role.save!
			redirect_to competition_round_path(params[:competition_id], params[:round_id])
		else
			render status: 404, json: { error: "Could not create role" }
		end
	end
end
