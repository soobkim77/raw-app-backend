class BlogsController < ApplicationController
    before_action :find_blog, only: [:update, :destroy]

    def index
        @blogs = Blog.all
        render json: BlogSerializer.new(@blogs), status: :accepted
    end

    def show
        @blog = Blog.find_by(id: params[:id])
        render json: BlogSerializer.new(@blog), status: :accepted
    end
    
    def create 
        @blog = Blog.new(blog_params) 
        @blog.user = @@user
        @blog.save
        if @blog.valid?
            render json: BlogSerializer.new(@blog), status: :ok
        else
            render json: {message: "You fucked up.", errors: @blog.errors}, status: :not_acceptable
        end
    end

    def update
        if @blog.update(blog_params)
            render json: BlogSerializer.new(@blog), status: :ok
        else
            render json: {message: "You fucked up.", errors: @blog.errors}, status: :not_acceptable
        end
    end

    def destroy
        if @blog.destroy
            render json: {message: "Blog successfully deleted."}, status: :ok
        else 
            render json: {message: "You fucked up.", errors: @blog.errors}, status: :not_acceptable
        end
    end

    private
    
    def find_blog
        @blog = Blog.find_by(id: params[:id])
    end

    def blog_params
        params.require(:blog).permit(:title, :content, :img)
    end

    # might have to do a default value for our image

end
