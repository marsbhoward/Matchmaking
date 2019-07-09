class Publisher < ApplicationRecord
	extend Slugifiable::ClassMethods
  	include Slugifiable::InstanceMethods
    
    has_many :games 
    has_many :users, :through => :games=

    def index
    	@publisher = Publisher.all
    end

    def list_of_games(publishers)
    	publishers.each.do |name|
    		game = Games.find_by(name)
    		self.games << games
    	end
    end


