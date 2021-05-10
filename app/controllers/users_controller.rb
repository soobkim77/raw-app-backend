class UsersController < ApplicationController
 
    def create 

        @user = User.create(user_params) #default bio/ img? 
        if @user.valid?
            binding.pry
            render json: {user: UserSerializer.new(@user)}, status: :created
        else
            render json: {message: "You fucked up."}, status: :not_acceptable
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :password, :bio, :img)
    end
    
end
