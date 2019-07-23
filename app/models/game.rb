class Game < ApplicationRecord
	extend Slugifiable::ClassMethods
  	include Slugifiable::InstanceMethods
  	


    has_many :user_games
    has_many :users, through: :user_games
    belongs_to :publisher
  
    def index
    	@game = Game.all
    end


end
