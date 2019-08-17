class Game < ApplicationRecord
	extend Slugifiable::ClassMethods
  	include Slugifiable::InstanceMethods
  	
    has_many :user_games
    has_many :users, through: :user_games
    belongs_to :publisher

    lfg = {}

    def index
    	@game = Game.all
    end

    def players
  		UserGame.grouping(self).count
  	end


end
