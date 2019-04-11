# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  #devise :omniauthable, omniauth_providers: [:facebook]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  def facebook
	if current_user.present?
	  current_user.apply_omniauth(request.env["omniauth.auth"])
	  redirect_to edit_user_registration_path, notice: "Facebook Account Linked!"
	else
	  @user = User.from_omniauth(request.env["omniauth.auth"])
	  sign_in_and_redirect @user
	end
  end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
