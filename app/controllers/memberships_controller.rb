class MembershipsController < ApplicationController
    def index
        render json: Membership.all
    end

    def show
        membership = Membership.find(params[:id])
        render json: membership 
    end

    def create 
    
        membership = Membership.create(group_id: params[:group_id], user_id: params[:user_id])
        render json: membership
    end


    def destroy 
        membership = Membership.find(params[:id])
        membership.destroy
        render json: membership
    end


    private 
    
    # def membership_params 
    #     params.require(:membership).permit(:user_id, :group_id)
    # end

end
