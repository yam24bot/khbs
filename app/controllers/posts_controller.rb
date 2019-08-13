class PostsController < ApplicationController

  before_action :set_post, only:[:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def index_user
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    # @post.user_id = current_user.id

    if @post.save
      redirect_to @post, success: 'post succesfully created'
    else
      render :new
    end
  end

  def update
    if @post.update_attributes(post_params)
      redirect_to @post, info: 'post succesfully updated'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, success: 'post successfully deleted'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :body)
  end

end