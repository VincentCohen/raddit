class PostsController < ApplicationController

  before_action :require_user, only: [:new, :create, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to '/posts'
    else
      redirect_to '/posts/new'
    end
  end

  def destroy

  end


  private
  def post_params
    params.require(:post).permit(:title, :description, :body)
  end

end
