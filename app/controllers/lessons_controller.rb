class LessonsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :home ]

    def index
      @lessons = Lesson.all
    end
    def show
        @user = current_user
        @class = Lesson.find(params[:id])  
        @lessons = Lesson.all
    end
    def new
        @lesson = Lesson.new
    end
  
    def create
        @lesson = Lesson.new(lesson_params)
        @lesson.user = current_user
        if @lesson.save
            redirect_to lessons_path
        else
            render :new
        end
    end
  
    def edit
        @lesson = Lesson.find(params[:id])
        authorize @class
    end
  
    def update
        @lesson = Lesson.find(params[:id])
        @lesson.update(lesson_params)
        redirect_to lesson_path(@lesson)
        authorize @lesson
    end
  
    def destroy
        @lesson = Lesson.find(params[:id])
        @lesson.destroy
        redirect_to lesson_path
        authorize @lesson
    end
  
    private
  
    def lesson_params
        params.require(:lesson).permit(:description, :teacher)
    end
end
