class UsersController < ApplicationController
    skip_before_action :authorized

    def create 
        @user = User.create(user_params) #default bio/ img? 
        if @user.valid?
            render json: {login: true}, status: :created
        else
            render json: {message: "You fucked up."}, status: :not_acceptable
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
    
end
