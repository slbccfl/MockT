Rails.application.routes.draw do
	root 'site#home' 
	devise_for :users
	resources :competitions do
		resources :competition_rounds
	end
	
	resources :ballots
		
end
