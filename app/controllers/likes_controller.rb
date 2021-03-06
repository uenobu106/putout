class LikesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @post = Post.find(params[:post_id])
    # @like = current_user.likes.build(user_id: current_user.id, post_id: @post)
    @like = Like.new(user_id: current_user.id, post_id: @post.id)
    if @like.save
      redirect_to post_path(@post), notice: "お気に入り登録しました"
    else
      redirect_to post_path(@post), alert: "お気に入りに登録できませんでした"
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
    if @like.destroy
      redirect_to post_path(@post), notice: "お気に入りを解除しました"
    end
  end

end
