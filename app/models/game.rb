class Game < ApplicationRecord
	extend Slugifiable::ClassMethods
  	include Slugifiable::InstanceMethods
  	
  	mygames = []


    has_and_belongs_to_many :users
    belongs_to :publisher
  
    def index
    	@game = Game.all
    end

    def add_to_mygames
      @@games<< self
    end
end
