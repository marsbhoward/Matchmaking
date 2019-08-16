class GamesController < ApplicationController


	def new 
		@game = Game.new
	end

	#def create(publisher)
		#Publisher.find_by(publisher.id).games.createGame.create(:name, :publisher_name, :year, :publisher_id,:slug)
	#nd


	def show
		@user = current_user
		@publisher = Publisher.find_by(slug: params[:publisher_publisher])
		@game = @publisher.games.find_by(slug: params[:game])
	end

	def index
	end

end
