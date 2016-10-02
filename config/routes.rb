Rails.application.routes.draw do
	root 'site#home' 
	devise_for :users
	resources :competitions do
		resources :phases
		resources :judges
		resources :rounds do
			resources :ballots, :only => [:new, :create]
		end
	end
	
	resources :ballots, :except => [:new, :create]

	resources :cases do
		resources :competitions
	end

	resources :institutions do
		resources :competitions
	end

	resources :teams do 
		resources :team_assignments
	end

	resources :team_members do
		resources :team_assignments
	end
		
end
