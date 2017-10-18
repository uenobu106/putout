class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params_post)
    if @post.save!
      redirect_to '/posts'
    else
      render action: 'new'
    end
  end

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end


  private

  def params_post
    params.require(:post).permit(:title, :content, :source)
  end

end
