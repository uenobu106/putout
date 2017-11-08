class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    # @like = current_user.likes.build(user_id: current_user.id, post_id: @post)
    @like = Like.new(user_id: current_user.id, post_id: @post.id)
binding.pry
    if @like.save!
      redirect_to posts_url, notice: "お気に入り登録しました"
    else
      redirect_to posts_url, alert: "お気に入りに登録できませんでした"
    end
  end
end
