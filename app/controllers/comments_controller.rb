class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.js
      else
        flash[:alert] = "error"
      end
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:response, :respondent)
  end
end
