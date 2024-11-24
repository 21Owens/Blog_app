class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end


  def create
    @post = Post.create
    @post.save
    redirect_to post_path(@post)
  end


  private

  def post_params
    params.require(:post).permit!(:author, :description)
  end

end
