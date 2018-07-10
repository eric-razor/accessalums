class CommentsController < ApplicationController
<<<<<<< HEAD
  # before_action :authorized
=======

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
>>>>>>> 110665d3f1467f3766e691093b47f7bab59dc98a

end
