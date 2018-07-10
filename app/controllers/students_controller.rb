class StudentsController < ApplicationController
  # before_action :authorized
  before_action :matching_student, only: [:edit, :update, :destroy]
  # skip_before_action :authorized, only: [:welcome, :new, :create, :show]

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
<<<<<<< HEAD

=======
>>>>>>> 02f2d953d81b369b951cf31f748fef4e7493954b
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
<<<<<<< HEAD
    @student = Student.new(user_params)
    if @student.valid?
      @student.save
=======
    # byebug
    @student = Student.new(student_params)
    if @student.valid?
      @student.save

      session[:student_id] = @student.id

>>>>>>> 02f2d953d81b369b951cf31f748fef4e7493954b
      redirect_to @student
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])

  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)

    redirect_to student_path(@student)
  end

  def destroy
    @student = Student.find(params[:id])

    @student.destroy

    redirect_to students_path
  end

  private

  # def find_student
  #   @student = Student.find(params[:id])
  # end

  def student_params
    params.require(:student).permit(:name, :bio, :email, :password, :password_confirmation)

  end

end
