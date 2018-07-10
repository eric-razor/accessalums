class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit


  end

  def update

  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
  end

end
