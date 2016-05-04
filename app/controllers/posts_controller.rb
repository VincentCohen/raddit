class PostsController < ApplicationController

  before_action :require_user, only: [:new, :create, :destroy]

  def index
    @posts = Post.all
  end

  def new

  end

  def create
    puts "index"
  end

  def destroy

  end

end
