class UserGame < ApplicationRecord
  belongs_to :user
  belongs_to :game


scope :grouping, -> (game) { where(lfg: true,game_id: game.id) }
   	  
end
