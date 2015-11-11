class PostsController < ApplicationController
  before_action :find_post, only: [:show, :destroy]

	def index
		@posts = Post.all
	end

  def show
    @comments = @post.comments
    @comment = @post.comments.build
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

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
    params.require(:post).permit(:title, :content, :author)
  end

end
