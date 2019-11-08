class GroupsController < ApplicationController
    def index
        render json: Group.all
    end

    def show
        group = Group.find(params[:id])
        render json: group 
    end

    def create 
        group = Group.create(group_params)
        render json: group
    end


    def update 
        group = Group.find(params[:id])
        group.update(group_params)
        render json: group
    end

    def destroy 
        group = Group.find(params[:id])
        group.destroy
        render json: group
    end


    private 
    
    def group_params 
        params.require(:group).permit(:name, :description, :admin_id, :photo)
    end
end
