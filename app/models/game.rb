class Game < ApplicationRecord
	extend Slugifiable::ClassMethods
  	include Slugifiable::InstanceMethods
  	
    has_many :user_games
    has_many :users, through: :user_games
    belongs_to :publisher


    


    def index
    	@game = Game.all
    end

    def players
  		UserGame.grouping(self).count
  	end

  def grouping
    UserGame.grouping(self).map do |id|
      user = User.find_by(id: id.user_id)
    end

  end  
end
