class Game < ApplicationRecord
    has_and_belongs_to_many :users
    belongs_to :publisher
  
      def list_of_users
          self.users.count
      end
end
