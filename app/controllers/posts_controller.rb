class PostsController < ApplicationController
  before_action :find_post, only: [:show, :destroy]
  before_action :require_user, only: [:new, :create, :destroy]

	def index
		@posts = Post.all.order(created_at: :desc)
	end

  def show
    @comments = @post.comments.order(created_at: :desc)
    @comment = @post.comments.build
  end

  def new
    @post = @current_user.posts.new
  end

  def create
    @post = @current_user.posts.new(post_params)

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

  def find_post
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
