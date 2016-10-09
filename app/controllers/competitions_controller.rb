class CompetitionsController < ApplicationController
	def index
		@competitions = Competition.all
	end
	def new
		@competition = Competition.new
		@cases = Case.all
		@institutions = Institution.all
	end
	def create
	# Create a new competition from the parameters passed in the form
		competition = Competition.new(
			title: params[:competition][:title],
			case_id: params[:competition][:case_id],
			institution_id: params[:competition][:institution_id],
			eventDatetime: params[:competition][:eventDatetime],
		)

		if competition.save
			redirect_to competitions_path
		else
			render status: 404, json: { error: "Competition #{params[:id]} could not be created" }
		end

	end
	def show
		@competition = Competition.find_by(id: params[:id])

		if @competition
			render :show
		else
		 	render status: 404, json: { error: "Competition #{params[:id]} not found" }
		end
	end
	def edit
		@competition = Competition.find_by(id: params[:id])
		@cases = Case.all
		@institutions = Institution.all

		if @competition
			render :edit
		else
		 	render status: 404, json: { error: "Competition #{params[:id]} not found" }
		end
	end
	def update
		competition = Competition.find_by(id: params[:id])

		if competition.update(title: params[:competition][:title],
				case_id: params[:competition][:case_id],
				institution_id: params[:competition][:institution_id],
				eventDatetime: params[:competition][:eventDatetime],
				)
			redirect_to competitions_path
		else
			render 'edit'
		end
	end

	def destroy as: 'destroy_competition'
		competition = Competition.find_by(id: params[:id])
		competition.destroy
		redirect_to competitions_path
	end
end
