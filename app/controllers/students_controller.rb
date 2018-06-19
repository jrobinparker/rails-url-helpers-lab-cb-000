class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end
  
  def activate
    status = @student.active 
    if status = true 
      status = false 
    else 
      status = true 
    end 
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end