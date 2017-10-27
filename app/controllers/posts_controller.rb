class PostsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_post, only:[:show,:edit,:update,:destroy]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params_post)
    if @post.save
      redirect_to '/posts'
    else
      render action: 'new'
    end
  end

  def index
    @post = Post.all.order("created_at desc");
  end

  def show
    @post = Post.includes(:comments).find(params[:id])
    @comment = @post.comments.build
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
