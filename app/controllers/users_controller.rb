class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.page(params[:page]).per(100)
  end

  def show
    @user = User.find(params[:id])
    # @user = current_user
    # @posts = Post.find(params[:id])
    # @post = Post.find(params[:post_id])
    # @likes = @posts.likes.find_by(user_id: @user.id)
    # @likes = Like.where(user_id: @user.id).all
    @like = Like.where("user_id = ?", @user)
    @like = Like.find_by(params[@user.id])
    # binding.pry
  end
end
