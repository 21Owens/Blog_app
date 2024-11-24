class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    render "shared/_form"
  end



end
