class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params_comment)
    @comment.save
    redirect_to post_path(@post)
    # @comment = @post.comments.build(params_comment)
    # @comment.post = @post
    #
    # if @comment.save
    #   redirect_to post_path(@post)
    # else
    #   render 'post/show'
    # end
  end


  private

  def params_comment
    params.require(:comment).permit(:content)
  end
end
