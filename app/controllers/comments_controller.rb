class CommentsController < ApplicationController
    def create
        @comment = Comment.create(comment_params)
        if @comment.valid?
            render json: @comment, status: :accepted
        else
            render json: {message: "You fucked up.", errors: @blog.errors}, status: :not_acceptable
        end
    end

    def delete

    end

    private 
        def comment_params
            params.require(:comment).permit(:content, :user_id, :blog_id)
        end
end
