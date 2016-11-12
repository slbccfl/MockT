Rails.application.routes.draw do
	root 'site#home' 
	devise_for :users
	resources :competitions do
		resources :phases, :except => [:show]
		resources :judges, :only => []
		resources :rounds, :except => [:index] do
			resources :ballots, :only => [:new, :create]
			resources :roles, :only => [:new, :create]
		end
	end
	
	resources :ballots, :except => [:new, :create, :index, :show, :destroy] do 
		resources :scores, :only => []
	end

	resources :roles, :only => [:show] do
		resources :scores, :only => []
	end

	resources :phases, :except => [:show] do
		resources :scores, :only => []
	end
	
	resources :cases, :only => [] do
		resources :competitions
	end

	resources :institutions, :only => [] do
		resources :competitions
	end

	resources :teams, :except => [:destroy] do 
		resources :team_assignments, :only => [:index, :new, :create]
	end

	resources :team_members, :except => [:destroy] do
		resources :team_assignments, :only => [:index, :new, :create]
	end

end
