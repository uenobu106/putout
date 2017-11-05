class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params_comment)
    @comment.user_id = current_user.id
    # binding.pry
    @comment.save
    redirect_to post_path(@post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private

  def params_comment
    params.require(:comment).permit(:post_id,:content)
  end
end
