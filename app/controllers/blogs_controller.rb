class BlogsController < ApplicationController
    # before_action :add_user, only: [:create]

      def create 
        @blog = Blog.new(blog_params) 
        @blog.user = @@user
        @blog.save
        if @blog.valid?
            render json: {blog: @blog}, status: :ok
        else
            render json: {message: "You fucked up."}, status: :not_acceptable
        end
    end


    private
    def blog_params
        params.require(:blog).permit(:title, :content, :img)
    end

    # might have to do a default value for our image
end
