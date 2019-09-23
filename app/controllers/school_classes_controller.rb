class SchoolClassesController < ApplicationController

    def index
  
    end
  
    def show
      @school_class = SchoolClass.find(params[:id])
  
    end
  
    def update
      @schoolclass = SchoolClass.find(params[:id])
      @schoolclass.update(schoolclassparams)
      redirect_to school_class_path(@schoolclass)
  
    end
  
    def new
      @schoolclass = SchoolClass.new
    end
  
    def create
      @schoolclass = SchoolClass.create(schoolclassparams)
      redirect_to school_class_path(@schoolclass)
    end
  
    def edit
      @school_class = SchoolClass.find(params[:id])
    end
  
    private
  
    def schoolclassparams
      params.require(:school_class).permit(:title, :room_number)
    end
  
  end