class CommentsController < ApplicationController
  before_action :find_post
  before_action :require_user

  def create
    @comment = @post.comments.new(comment_params)
    @comment.save
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
  end

  def find_post
    @post = Post.find(params[:post_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:response, :user_id)
  end
  
end
