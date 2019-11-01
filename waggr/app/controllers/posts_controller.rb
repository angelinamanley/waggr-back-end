class PostsController < ApplicationController
    
    def index 
        render json: Post.all
    end

    def create 
        post = Post.create(post_params)
        render json: post
    end

    def destroy 
        post = Post.find(params[:id])
        post.destroy 
        render json: post
    end

    def update 
        post = Post.find(params[:id])
        post.update(post_params)
        render json: post 
    end

    private 

    def post_params 
        params.permit(:post).require(:content, :user_id, :group_id)
    end
end
