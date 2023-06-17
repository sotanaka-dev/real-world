require 'jwt_helper'

class AuthenticationController < ApplicationController
  include JwtHelper

  def login
    user = User.find_by(email: params[:user][:email])

    if user&.authenticate(params[:user][:password])
      token = encode_token({ user_id: user.id })
      render json: { user: user.as_json_response(token) }, status: :ok
    else
      render json: { errors: 'Invalid email or password' }, status: :unauthorized
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
