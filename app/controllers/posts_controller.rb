class PostsController < ApplicationController
  before_action :post_find, only: [:destroy, :edit, :update, :show]
  before_action :move_to_index, except: [:index, :show]

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
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  private
  def post_params
    params.require(:post).permit(:question_text, :answer_text, :question_image, :answer_image).merge(user_id: current_user.id)
  end

  def post_find
    @post = Post.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
