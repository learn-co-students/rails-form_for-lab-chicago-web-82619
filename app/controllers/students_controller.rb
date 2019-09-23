class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
    @school_class = SchoolClass.find(params[:school_class_id])
  end

  def show
    @student = Student.find(params[:id])
    @school_class = SchoolClass.find(params[:school_class_id])
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name, :school_class_id))
    @student.save
    @school_class = SchoolClass.find(params[:school_class_id])
    # p @student
    redirect_to school_class_student_path(@school_class, @student)
  end

  def edit
    @student = Student.find(params[:id])
    @school_class = SchoolClass.find(params[:school_class_id])
  end

  def update
    p params
    @student = Student.find(params[:id])
    @student.assign_attributes(params.require(:student).permit(:first_name, :last_name, :school_class_id))
    @student.save
    @school_class = SchoolClass.find(params[:school_class_id])
    redirect_to school_class_student_path(@school_class, @student)
  end


end
