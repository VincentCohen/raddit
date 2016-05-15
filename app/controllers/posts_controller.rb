class PostsController < ApplicationController

  before_action :require_user, only: [:new, :create, :destroy]
  before_action :set_post, only: [:upvote]

  def index
    @posts = Post.includes(:user, :votes).all.reverse_order
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

  def upvote
    @vote = Vote.create(vote_params)

    render :nothing => true, :status => 201
  end

  def destroy

  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  private
  def vote_params
    params.require(:vote).permit(:vote_id, :post_id)
  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :body, :user_id)
  end

end
