class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update]

  def index
  end

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  def update
    @school_class = SchoolClass.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@school_class)
  end

  def set_school_class
    @school_class = SchoolClass.all.find(params[:id])
  end
end
