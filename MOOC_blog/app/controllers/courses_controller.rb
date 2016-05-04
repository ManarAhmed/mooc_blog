class CoursesController < ApplicationController
   before_action :authenticate_user!
   before_action :set_course, only: [:show, :edit, :update, :destroy]
  
   def index
      @course = Course.all
   end
   
   def new
      @course = Course.new
   end
   
   def create
      @course = Course.new(course_params)
      respond_to do |format|
         if @course.save
            format.html {redirect_to @course, notice:'Course Was successfully created.'}
            format.json {render :show, status: :created, location: @course}
         else
            format.html {reder :new}
            format.json {render json: @course.errors,status: :unprocessable_entity}   
         end
      end
   end
   
   def update
   end
   
   def edit
   end
   
   def show
   end
   
   def destroy
   end
   
 private  
   def set_course
      @course = Course.find(params[:id])
   end
   
   def course_params
      params.require(:course).permit(:course_title)
   end
   
end
