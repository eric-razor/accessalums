class CommentsController < ApplicationController
  # before_action :authorized

  # def index
  #   @comments = Comment.all
  # end
  #
  # def show
  #   @comment = Comment.find(params[:id])
  # end
  #
  # def edit
  #   @comment = Comment.find(params[:id])
  # end
  #
  # def update
  #
  # end
  #
  # def new
  #   @comment = Comment.new
  # end

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
