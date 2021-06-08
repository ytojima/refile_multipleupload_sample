class PostsController < ApplicationController

    before_action :post_find, only: [:show, :edit, :update]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        Post.create(post_params)
        redirect_to root_path
    end

    def show
    end

    def edit
    end

    def update
        @post.update(post_params)
        redirect_to post_path(params[:id])
    end

    def destroy
        Post.destroy(params[:id])
        redirect_to root_path
    end

    private
    def post_params
        params.require(:post).permit(:title, :body, post_images_images: [])
    end

    def post_find
        @post = Post.find(params[:id])
    end
end
