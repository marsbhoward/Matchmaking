Rails.application.routes.draw do
	

	devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

	authenticated :user do
		root 'home#index', as: 'authenticated_root'
	end
	
	devise_scope :user do
		root 'devise/sessions#new'
	end

	resources :authentications, only: [:destroy]

  	resources :users

  	resources :publishers, param: :publisher do		
  		resources :games, param: :game
  	end
  	



  	resolve("Publisher") { route_for(:publisher) }


  	
  	get "/publishers/", to: "publishers#index"
  	get "/publishers/new", to: "publishers#new"
  	get '/publishers/:publisher', to: 'publishers#show', as: 'Publisher'
  	get '/publishers/:publisher/games/:game', to: 'games#show'

    get '/mygames/', to: 'user_games#show'
  	post '/user_games/:game/edit', to: 'user_games#edit'
 end