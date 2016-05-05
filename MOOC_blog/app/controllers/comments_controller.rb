class CommentsController < ApplicationController
  # if user not log in he can't use those actions
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :create, :new] 
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
   def index
      @comments = Comment.all
   end
   
   def new
      @comment = Comment.new
   end
   
   def create
      @user_id = current_user.id 
#    @lecture = Lecture.find(params[:lecture_id])
     @comment = Comment.new(comment_params)
      respond_to do |format|
         if @comment.save
            format.html {redirect_to controller:"lectures" , action: "show", id:params[:lecture_id]}
         else
            format.html {reder :new} 
         end
      end
   end
   
   def update
     respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment }
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
   end

  private
    def set_comment
      
       @comment = Comment.find(params[:id])
    end
    
    def comment_params
      params.require(:comment).permit(:user_id, :lecture_id, :comment_title, :body)
    end
end

