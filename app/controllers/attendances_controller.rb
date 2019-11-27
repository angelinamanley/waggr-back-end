class AttendancesController < ApplicationController
    def index
        render json: Attendance.all
    end

    def show
        attendance = Attendance.find(params[:id])
        render json: attendance 
    end

    def create 
        attendance = Attendance.create(attendance_params)
        render json: attendance
    end


    def update 
        attendance = Attendance.find(params[:id])
        attendance.update(attendance_params)
        render json: attendance
    end

    def destroy 
        attendance = Attendance.find(params[:id])
        attendance.destroy
        render json: attendance
    end


    private 
    
    def attendance_params 
        params.require(:attendance).permit(:user_id, :meetup_id)
    end
end
