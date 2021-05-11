class CommentsController < ApplicationController
    def create
        byebug
        @comment = Comment.new(comment_params)
        @comment.user = @@user
        @comment.save
        if @comment.valid?
            render json: @comment, status: :accepted
        else
            render json: {message: "You fucked up.", errors: @comment.errors}, status: :not_acceptable
        end
    end

    def delete

    end

    private 
        def comment_params
            params.require(:comment).permit(:content, :blog_id)
        end
end
