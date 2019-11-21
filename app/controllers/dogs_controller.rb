class DogsController < ApplicationController
    def show 
        dog = Dog.find(params[:id])
        render json: dog 
    end

    def index 
        render json: Dog.all 
    end

    def create 
        dog = Dog.create(dog_params)
        render json: dog
    end


    def update 
        dog = Dog.find(params[:id])
        dog.update(dog_params)
        render json: dog
    end

    def destroy 
        dog = Dog.find(params[:id])
        dog.destroy
        render json: dog
    end


    private 
    
    def dog_params 
        params.require(:dog).permit(:name, :gender, :user_id, :breed, :birthday, :gender, :bio, :photo )
    end
end
