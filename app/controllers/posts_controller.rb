class PostsController < ApplicationController
  before_action :post_find, only: [:destroy, :edit, :update, :show]

  def index
    @posts = Post.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to root_path
  end

  def show
  end

  private
  def post_params
    params.require(:post).permit(:question_text, :answer_text, :question_image, :answer_image)
  end

  def post_find
    @post = Post.find(params[:id])
  end
end
