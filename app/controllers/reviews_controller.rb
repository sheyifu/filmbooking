class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_movie

  # GET /reviews
  # GET /reviews.json
  
  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.movie_id = @movie.id
    respond_to do |format|
      
      if @review.save
        format.html { redirect_to @movie, notice: 'Review was successfully created.' }
        
      else
        format.html { render :new }
        
      end
    end
  end

  
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  
  def destroy
    @review.destroy
    respond_to do |format|
       redirect_to reviews_url, notice: 'Review was successfully destroyed.'
      
      
    end
  end

  private
   
    def set_review
      @review = Review.find(params[:email])
    end

    def set_movie
      @movie = Movie.find(params[:movie_id])
    end

    
    def review_params
      params.require(:review).permit(:rating, :comment)
    end
end
