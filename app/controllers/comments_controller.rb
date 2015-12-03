 class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :set_news
  
  def index
    @comments = Comment.all
  end

  
  def show
  end

  
  def new
    @comment = Comment.new
  end

  
  def edit
  end

  
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.news_id = @news.id

    respond_to do |format|
      if @comment.save
         redirect_to @news, notice: 'Comment was successfully created.' 
        
      else
         render :new 
        
      end
    end
  end

  
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        redirect_to @comment, notice: 'Comment was successfully updated.' 
        
      else
         render :edit 
        
      end
    end
  end

  
  def destroy
    @comment.destroy
    respond_to do |format|
       redirect_to comments_url, notice: 'Comment was successfully destroyed.' 
      
    end
  end

  private
   
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_news
      @news = News.find(params[:news_id])
    end

    
    def comment_params
      params.require(:comment).permit(:comment)
    end
end
