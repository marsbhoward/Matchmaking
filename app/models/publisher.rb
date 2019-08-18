class Publisher < ApplicationRecord
	extend Slugifiable::ClassMethods
  	include Slugifiable::InstanceMethods
    
    has_many :games 
    has_many :user_games, through: :games
    has_many :users, through: :user_games

    validates :name, uniqueness: true, presence: true
    

    def index
    	@publisher = Publisher.all
    end

end


