class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  
  def index
    @news = News.all
  end

  
  def show
    @comments = Comment.where(news_id: @news.id).order("created_at DESC")
   
  end

  
  def new
    @news = current_user.news.build
  end

  
  def edit
  end

  
  def create
    @news = current_user.news.build(news_params)

    respond_to do |format|
      if @news.save
        redirect_to @news, notice: 'News was successfully created.' 
        
      else
        render :new 
        
      end
    end
  end

 
  def update
    respond_to do |format|
      if @news.update(news_params)
         redirect_to @news, notice: 'News was successfully updated.'
        
      else
         render :edit 
        
      end
    end
  end

 
  def destroy
    @news.destroy
    respond_to do |format|
       redirect_to news_index_url, notice: 'News was successfully destroyed.' 
      head :no_content 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:news).permit(:title, :context, :image)
    end
end
