class UserGame < ApplicationRecord
  belongs_to :user
  belongs_to :game

   grouped = {}
   def grouping
      scope :grouping, -> { where(lfg: true) }
      grouped << @usergame
      
      grouped.each do |user|
      	user.email
      end
    end  
end
