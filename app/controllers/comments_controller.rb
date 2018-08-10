class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.pitch_id = params[:pitch_id]
    @comment.save
    redirect_to pitch_path(@comment.pitch)
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

end
