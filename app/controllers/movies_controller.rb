  class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  

  def search
    if params[:search].present?
      @movies = Movie.search(params[:search])
    else
      @movies = Movie.all
    end
  end

  def index
    @movies = Movie.all
  end

  def show
    @reviews = Review.where(movie_id: @movie.id).order("created_at DESC")
    @order = current_user.orders.build
    
    if @reviews.blank?
      @avg_review = 0
    else
      @avg_review = @reviews.average(:rating).round(2)
    end
  end

  def new
    @movie = current_user.movies.build
  end

  def edit
  end

  def create
    @movie = current_user.movies.build(movie_params)

    respond_to do |format|
      if @movie.save
         redirect_to @movie, notice: 'Movie was successfully created.' 
        
      else
        render :new
        
      end
    end
  end

  def update
    respond_to do |format|
      if @movie.update(movie_params)
        redirect_to @movie, notice: 'Movie was successfully updated.'
        
      else
         render :edit
        render json: @movie.errors, status: :unprocessable_entity 
      end
    end
  end

  def destroy
    @movie.destroy
    respond_to do |format|
       redirect_to movies_url, notice: 'Movie was successfully destroyed.'
       head :no_content 
    end
  end


  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(:title, :description, :movie_length, :director, :rating, :image)
    end


end