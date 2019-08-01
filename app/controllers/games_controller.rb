class GamesController < ApplicationController


	def new 
		@game = Game.new
	end

	def show
		@user = User.find_by(email: session[:email])
		@publisher = Publisher.find_by(slug: params[:publisher_publisher])
		@game = @publisher.games.find_by(slug: params[:game])
	end

end
