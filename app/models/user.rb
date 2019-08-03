class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:facebook]
    

    has_many :user_games
    has_many :games, through: :user_games
    has_many :publishers, through: :games

    


    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
          user.email = auth.info.email
          user.provider = auth.provider
          user.uid = auth.uid
          user.password = Devise.friendly_token[0,20]
        end
    end

    def apply_omniauth(auth)
      update_attributes(
        provider: auth.provider,
        uid: auth.uid
      )
    end

    def has_facebook_linked?
      self.provider.present? && self.uid.present?
    end

    
end
