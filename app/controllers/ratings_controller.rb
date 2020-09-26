class RatingsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    rating = Rating.new(rating_params)
    if rating.save
      render json: RatingSerializer.new(rating)
    else
      render json: {error: 'Review could not be saved.'}
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
      params.require(:rating).permit(:rTitle, :rInt, :rIntCom, :rTech, :rTechCom, :rLang, :rCompen, :rBenef, :rDivers, :rMentor, :rCult, :rCultcOM, :rOv, :rFName, :rLName, :rBootcamp, :rCity, :rState, :rLinked, :company_id)
  end
end

 