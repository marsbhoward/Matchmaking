class UserGamesController < ApplicationController
	def show
		@user = User.find_by(email: session[:email])
	end

	def edit
		@game = Game.find_by(slug: params[:game])
	end

	def create
	end
end
