class Api::UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]

  def current
    render json: current_user
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to api_user_token_path, params: { auth: { email: user.email, password: user.password } }, status: 307
    else
      render json: { status: 500, data: user.errors }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:auth).permit(:email, :password, :password_confirmation)
  end
end
