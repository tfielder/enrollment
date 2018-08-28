class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "#{@student.name} added!"
      redirect_to student_path(@student)
    else
      flash[:error] = "Sorry, this student name already exists."
      redirect_to new_student_path
    end
  end

  def show
    @student = Student.find(params[:id])    #dunno why I'm getting error that show doesn't exist
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy

    flash[:success] = "#{student.name} was successfully deleted."
    redirect_to students_path
  end

  private
    def student_params
      params.require(:student).permit(:name)
    end
end

