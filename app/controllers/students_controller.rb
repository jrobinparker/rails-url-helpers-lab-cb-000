class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end
  
  def activate
    if @student.active = false 
      @student.update_attribute(:active)
    else 
      @student.update_attribute(:active, false)
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end