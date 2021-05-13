class LikesController < ApplicationController

    before_action :find_like, only: [:destroy]

    def create
        @like= Like.new(like_params)
        @like.user = @@user
        if @like.valid?
            @like.save
            render json: {yo: "yo"}
        else
            render json: {message: "You've already liked this post.", errors: @like.errors}, status: :not_acceptable
        end
    end

    def destroy
        if @like.destroy
            render json: {message: "Like successfully deleted."}, status: :ok
        else 
            render json: {message: "You fucked up.", errors: @comment.errors}, status: :not_acceptable
        end
    end

    private 

    def like_params
        params.require(:like).permit(:likeable_id, :likeable_type)
    end

    def find_like
        @like = Like.find_by(user_id: @@user.id, likeable_id: params[:likeable_id], likeable_type: params[:likeable_type])
    end
end
