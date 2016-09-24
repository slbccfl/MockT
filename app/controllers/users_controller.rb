class UsersController < ApplicationController
	before_action :user_setup, only: [:new, :home, :index, :show]
	before_action :redirect_if_already_logged_in, only: [:new]
	before_action :redirect_if_not_logged_in, only: [:show]
	before_action :redirect_if_not_admin, only: [:index]
	 # renders the home page
	def home
	@name = @current_user ? @current_user.username : "Not Logged In"
	end

	def profile
	end

	def index
		@users = User.all
	end

	# renders the signup form
	def new
	end

	def show
	end

	# receives form and creates a user from that data
	def create
		user = User.new(user_params)
		if user.save
		  redirect_to '/'
		else
		  redirect_to '/users/sign_up'
		end
	end  

	def user_parms
		params.require(:user).permit(
			:username, :email,
			:password, :password_confirmation)
	end
end
