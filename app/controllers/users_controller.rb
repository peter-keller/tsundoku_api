class UsersController < ApplicationController

    def index
        users = User.all
        render json: {data: users}, status: 200
    end

    def show
        user = User.find(params[:id])
        if user
            render json: {status: 200, data: user}, status: :ok
        else 
            render json: {status: 422, message: "No user"}, status: :unprocessable_entity
        end
    end

    def create
        user = User.find_or_create_by(user_params)
        if user.save
          render json: {status: 200, data: user}, status: :ok
        else
          render json: {status: 500, data: user.errors}, status: :unprocessable_entity
        end
    end
    
    def destroy
        User.find(params[:id]).destroy
        render json: {status: 200, data: nil, message: "User deleted"}, status: :ok
    end
    
    def update
        user = User.find(params[:id])
        if user.update_attributes(user_params)
          render json: {status: 200, data: user}, status: :ok
        else
          render json: {status: 500, message: "User not updated", data: user.errors}, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.permit(:name, :id, :email, :password)
    end
end