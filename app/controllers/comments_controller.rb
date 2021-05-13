class CommentsController < ApplicationController

    before_action :find_comment, only: [:destroy]

    def create
        @comment = Comment.new(comment_params)
        @comment.user = @@user
        @comment.save
        if @comment.valid?
            render json: CommentSerializer.new(@comment), status: :accepted
        else
            render json: {message: "You fucked up.", errors: @comment.errors}, status: :not_acceptable
        end
    end

    def destroy
        if @comment.destroy
            render json: {message: "Blog successfully deleted."}, status: :ok
        else 
            render json: {message: "You fucked up.", errors: @comment.errors}, status: :not_acceptable
        end
    end

    private 
    
        def comment_params
            params.require(:comment).permit(:content, :blog_id)
        end

        def find_comment
            @comment = Comment.find_by(id: params[:id])
        end
    
end
