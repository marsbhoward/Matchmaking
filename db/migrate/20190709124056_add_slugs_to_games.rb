class AddSlugsToGames < ActiveRecord::Migration[5.2]
   def self.up    
    change_table :games do |t|
   
         t.string 	:slug

        end
    end
end
