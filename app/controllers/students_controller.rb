class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = find_student
  end

  def edit
    @student = find_student
  end
  
  def update
    @student = find_student
    @student.update(post_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  private
  def post_params(*args)
    params.require(:student).permit(*args)
  end

  def find_student
    Student.find(params[:id])
  end
end