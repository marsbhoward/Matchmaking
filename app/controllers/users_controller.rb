class UsersController < ApplicationController
	get '/games' do
		erb:'games/games'
	end
end
