Rails.application.routes.draw do
	root 'site#home' 
	devise_for :users
	resources :competitions do
		resources :phases
		resources :rounds do
			resources :ballots, :only => [:new, :create]
		end
	end
	
	resources :ballots, :except => [:new, :create]
		
end
