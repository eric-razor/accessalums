class ApplicationController < ActionController::Base
  helper_method :current_student, :logged_in?

  def current_student
    if session[:student_id]
      @student = Student.find_by(id: session[:student_id])
    else
    end
  end

  def logged_in?
    !!current_student
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  def matching_student
    if current_student && current_student.id != params[:id].to_i
      redirect_to student_path(current_student) #error page down the line
    end
  end

end
