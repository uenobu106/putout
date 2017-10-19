class PostsController < ApplicationController

  before_action :set_post, only:[ :show, :edit, :update ]

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
    @post = Post.all
  end

  def show
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


  private

  def params_post
    params.require(:post).permit(:title, :content, :source)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
