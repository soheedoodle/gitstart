class BlogController < ApplicationController
    def index
        @posts = Post.paginate(:page => params[:page])
    end
    
    def create
        Post.create(title:params[:p_title], content:params[:p_content])
        redirect_to :root
    end
    
    def destroy
        pp = Post.find(params[:id])
        pp.destroy
        redirect_to :root
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        pp = Post.find(params[:id])
        pp.title = params[:p_title]
        pp.content = params[:p_content]
        pp.save
        redirect_to:root
    end
    def comment
        Comment.create(blog_id: params[:blog_id], msg: params[:comment], image:params[:p_image])
        redirect_to :root
    end
end
