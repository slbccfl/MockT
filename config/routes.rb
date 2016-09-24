Rails.application.routes.draw do
	root 'site#home' 
	devise_for :users
	resources :competitions
	# get '/sign_up' => 'users#new'
	# post '/users' => 'users#create'
	# get '/profile' => 'users#show'
	# get '/users' => 'users#index'
	# get '/log_in' => 'sessions#new'  # displays the login form
	# post '/log_in' => 'sessions#create' # log in
	# delete 'log_out' => 'sessions#destroy' # log out
end
