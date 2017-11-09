class UsersController < ApplicationController

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
    @likes = Like.where("user_id = ?", @user)
    # @likes_post = Like.find_by(params[@user.id])
    # binding.pry
  end
end
