class BlogsController < ApplicationController
    # skip_before_action :authorized
    def index
        byebug
        @blogs = Blog.all
        render json: {blogs: @blogs}, status: :accepted
    end

end
