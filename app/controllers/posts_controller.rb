class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @posts = Post.includes(:user).order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path, notice: "Photo shared!"
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image, :filter)
  end
end
