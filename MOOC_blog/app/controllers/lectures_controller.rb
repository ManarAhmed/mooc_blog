class LecturesController < ApplicationController
skip_before_action :verify_authenticity_token
before_action :set_lecture, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  def index

    @lectures = Lecture.all.order(:created_at => 'asc')
  end
  def list
    @course = Course.find(params[:course_id])
    @lectures = @course.lectures
#  @lectures = Lecture.all.order(:cached_votes_up => 'desc')
  end

  def show
    @comments = @lecture.comments.all    
  end

  def edit
    @courses = Course.all
  end

  def create
    @lecture = Lecture.new(lecture_params)

    respond_to do |format|
      if @lecture.save
        format.html { redirect_to @lecture, notice: 'Lecture was successfully created.' }
        format.json { render :show, status: :created, location: @lecture }
      else
        format.html { render :new }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lecture.destroy
    respond_to do |format|
      format.html { redirect_to lectures_url, notice: 'Lecture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def new
    @course_id= params[:lecture_id];
    @lecture = Lecture.new
  end

  def update
    respond_to do |format|
      if @lecture.update(lecture_params)
        format.html { redirect_to @lecture, notice: 'Lecture was successfully updated.' }
        format.json { render :show, status: :ok, location: @lecture }
      else
        format.html { render :edit }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  #upvote from user
  #down vote from user
  def upvote
    @lecture.upvote_from current_user
    redirect_to lecture_path
  end

  def downvote
    @lecture.downvote_from current_user
    redirect_to lecture_path
  end
private
  def set_lecture
    @lecture = Lecture.find(params[:id])
  end

  def lecture_params
    params.require(:lecture).permit(:title, :content, :image, :attachment, :id, :course_id, :user_id)
  end
end
