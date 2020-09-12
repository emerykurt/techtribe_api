class RatingsController < ApplicationController

  def create
    rating = Rating.new(rating_params)
    if rating.save
      render json: RatingSerializer.new(rating)
    else
      render json: {error: 'Review could not be saved'}
    end
  end

  def index
    ratings = Rating.all
    render json: RatingSerializer.new(ratings)
  end

  def update
    rating = Rating.find(params[:id])
    rating.update(rating_params)
    render json: RatingSerializer.new(rating)
  end

  def show
    rating = Rating.find(params[:id])
    render json: RatingSerializer.new(rating)
  end

  def destroy
    rating = Rating.find(params[:id])
    rating.destroy
    render json: {message: "Successfully deleted the rating of #{rating.first_name} about #{rating.company.name}!"}
  end

  private

  def rating_params
      params.require(:rating).permit(:interview, :interview_comment, :tech, :tech_interview, :language, :compensation, :benefits, :diversity, :mentorship, :culture, :culture_comment, :overall, :first_name, :last_name, :bootcamp, :city, :state, :company_id)
  end
end
