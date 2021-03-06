class StudentsController < ApplicationController
  before_action :authorized
  before_action :matching_student, only: [:edit, :update, :destroy]
  skip_before_action :authorized, only: [:welcome, :index, :new, :create, :show]

  def welcome
    # redirect_to current_student
    render :welcome #a welcome page
  end

  def index
    @students = Student.with_attached_profile_picture
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    if @student.valid?
      @student.save
      # first time naming student_id 29
      session[:student_id] = @student.id #
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
  def student_params
    params.require(:student).permit(:name, :bio, :email, :password, :password_confirmation, :profile_picture, :langauge)
  end

end
