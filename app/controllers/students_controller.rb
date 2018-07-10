class StudentsController < ApplicationController

  # [:show, :new, :create,:edit,:update, :destroy]

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
    @student = Student.new(user_params)
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

  # private
  # def student_params
  #   params.require(:student).permit()
  #
  # end

end
