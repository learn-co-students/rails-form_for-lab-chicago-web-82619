class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
    @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

  def set_student
    @student = Student.all.find(params[:id])
  end


end
