class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(student_params[:id])
  end



  # private
  #   def student_params
  #     params.require(:student).permit(:name)
  #   end
end

