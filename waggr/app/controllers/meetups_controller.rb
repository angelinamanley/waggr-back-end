class MeetupsController < ApplicationController
   
    
    def index
        meetups = Meetup.all
        render json: meetups
    end

    def show
        meetup = Meetup.find(params[:id])
        render json: meetup 
    end

    def create 
        meetup = Meetup.create(meetup_params)
        render json: meetup
    end


    def update 
        meetup = Meetup.find(params[:id])
        meetup.update(meetup_params)
        render json: meetup
    end

    def destroy 
        meetup = Meetup.find(params[:id])
        meetup.destroy
        render json: meetup
    end


    private 
    
    def meetup_params 
        params.require(:meetup).permit(:group_id, :description, :location, :datetime, :name )
    end
    
end
