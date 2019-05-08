class Api::UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]

  def current
    render json: current_user.as_json(only: %i[id email])
  end

  def create
    user = User.new(user_params)
    
    if user.save
        # byebug
        # jwt = Knock::AuthToken.new user.to_token_payload
        redirect_to api_user_token_path, params: { auth: {email: user.email, password: user.password }}, status: 307
        #render json: { status: 200, data: current_user.as_json(only: %i[id email]) }, status: :ok
    else
      render json: { status: 500, data: user.errors }, status: :unprocessable_entity
    end
  end

  #   def index
  #     users = User.all
  #     render json: { data: users }, status: 200
  #   end

  #   def show
  #     user = User.find(params[:id])
  #     if user
  #       render json: { status: 200, data: user }, status: :ok
  #     else
  #       render json: { status: 422, message: 'No user' }, status: :unprocessable_entity
  #     end
  #   end

  #   def destroy
  #     User.find(params[:id]).destroy
  #     render json: { status: 200, data: nil, message: 'User deleted' }, status: :ok
  #   end

  #   def update
  #     user = User.find(params[:id])
  #     if user.update_attributes(user_params)
  #       render json: { status: 200, data: user }, status: :ok
  #     else
  #       render json: { status: 500, message: 'User not updated', data: user.errors }, status: :unprocessable_entity
  #     end
  #   end

  private

  def user_params
    params.require(:auth).permit(:email, :password, :password_confirmation)
  end
end
