class StudentsController < ApplicationController

  # [:show, :new, :create,:edit,:update, :destroy]

  def index
    #wouldn't this represent all of a students followers?
    @students = Student.all

  end



  def new
    @user = User.new

  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  # private
  # def student_params
  #   params.require(:student).permit()
  #
  # end

end
