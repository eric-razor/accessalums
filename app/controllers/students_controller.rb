class StudentsController < ApplicationController
  # before_action :authorized
  # skip_before_action :authorized, only: [:welcome]

  # [:show, :new, :create,:edit,:update, :destroy]
  def welcome
    render :welcome #a welcome page
  end

  def index
    #wouldn't this represent all of a students followers?
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    # byebug
    @student = Student.new(student_params)
    if @student.valid?
      @student.save
      redirect_to @student
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

  private
  def student_params
    params.require(:student).permit(:name, :bio, :email, :password, :password_confirmation)

  end

end
