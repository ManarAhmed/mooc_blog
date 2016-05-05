class CoursesController < ApplicationController
   before_action :authenticate_user!, only: [:new, :create , :edit, :update, :destroy]
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
            format.html {redirect_to @course}
         else
            format.html {reder :new}
         end
      end
   end
   
   def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course }
      else
        format.html { render :edit }
      end
    end
   end
   
   def edit
   end
   
   def show
   end
   
   def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url}
    end
   end
   
 private  
   def set_course
      @course = Course.find(params[:id])
   end
   
   def course_params
      params.require(:course).permit(:course_title,:image,:user_id)
   end
   
end
