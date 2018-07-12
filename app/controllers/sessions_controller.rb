class SessionsController < ApplicationController
  #login
  def new

  end
 #check if password is correct for this student
  def create
    student = Student.find_by(email: params[:email])
    if student && student.authenticate(params[:password])
      session[:student_id] = student.id
      redirect_to student_path(student)
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:student_id)
    redirect_to welcome_url
  end
end
