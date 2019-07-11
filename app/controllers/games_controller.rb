class GamesController < ApplicationController


	def new 
		@game = Game.new
	end

	def show
		@publisher = Publisher.find_by(slug: params[:publisher_publisher])
		@game = @publisher.games.find_by(slug: params[:game])
	end

end
