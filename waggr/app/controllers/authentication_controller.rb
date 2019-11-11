class AuthenticationController < ApplicationController
    
    def create
        user = User.find_by(email: login_params[:email])
        if user && user.authenticate(login_params[:password])
            render json: { token: encode_token({user_id: user.id}), user: UserSerializer.new(user) }
        else
            render json: { error: "credentials not valid" }, status: :not_acceptable
        end
    end

    def validate
        if @current_user
            render json: { token: encode_token({user_id: @current_user.id}), user: UserSerializer.new(@current_user)}
        else
            render json: { error: "user not found" }, status: :not_found
        end
    end

    private

    def login_params
        params.require(:user).permit(:email, :password)
    end

end