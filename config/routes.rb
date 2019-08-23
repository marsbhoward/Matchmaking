Rails.application.routes.draw do
	

	devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

	authenticated :user do
		root 'home#index', as: 'authenticated_root'
	end
	
	devise_scope :user do
		root 'devise/sessions#new'
	end

  resources :user_games do 
    put :lfg
  end
	
  resources :authentications, only: [:destroy]

  	resources :users

  	resources :publishers  do		
  		resources :games
  	end
  	


  	resolve("Publisher") { route_for(:publisher) }


  	
  	get "/publishers/", to: "publishers#index"
  	get '/publishers/:publisher', to: 'publishers#show', as: 'Publisher'

    #added /game to both
    get "/publishers/:publisher/games/new", to: "games#new"
    post "/publishers/:publisher/games/new", to: "games#create"
    get '/publishers/:publisher/games/:game', to: 'games#show' 
  	#post "/publishers/:publisher/new", to: "games#new"
    get "/lfg/", to: "games#index"
    #rake also routes this to game#index
    #get "/publishers/:publisher_id/games", to: "games#index"
    get "/publishers/:publisher_id/games/:id/grouping", to: "games#grouping"


    get '/mygames/', to: 'user_games#index'
    get '/user_games/:id', to: 'user_games#show' 
    post '/mygames',params: :game_id, to: 'user_games#create'
    get '/mygames/:game/edit', to: 'user_games#edit'
    put '/mygames/:game/edit', to: 'user_games#update'
    #edit button routes here
    get'/mygames/:game/mygames/edit', to: 'user_games#update'
    delete '/mygames/:game/edit', to: 'user_games#destroy' 
    post '/mygames/:game/edit', to: 'user_games#destroy'   
 end