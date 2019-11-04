require_relative "../test"


class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user 
    end

    def create 
            user = User.create(user_params)
            if user.valid?
                render json: { token: encode_token({user_id: user.id}), user: UserSerializer.new(user) }
            else
                render json: { errors: user.errors.full_messages }, status: :not_acceptable
            end
    end


    def update 
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy 
        user = User.find(params[:id])
        user.destroy
        render json: user
    end

    def add_location 
        user=User.find(params[:user_id])
        user.update(location: params[:location])
        user.save
        coordinates = user.geocode
        user.latitude = coordinates[0]
        user.longitude = coordinates[1]
        user.save
        render json: user 




    end


    private 
    
    def user_params 
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :photo, :location )
    end


end
