class PostsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_post, only:[:show,:edit,:update,:destroy]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params_post)
    @post.user_id = current_user.id
    if @post.save
      redirect_to '/posts'
    else
      render action: 'new'
    end
  end

  def index
    @posts = Post.all.order("created_at desc");
    # binding.pry
  end

  def show

    @comments = @post.comments
    @comment = Post.find(params[:id]).comments.build
    @like = Post.find(params[:id]).likes.build
    # @like.user_id = current_user.id
    # binding.pry
    # @comments = @post.comments
    # @comment = @post.comments.build
    # binding.pry
  end

  def edit
  end

  def update
    if @post.update(params_post)
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end


  private

  def params_post
    params.require(:post).permit(:title, :content, :source)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
