class CompaniesController < ApplicationController
  def create
    @company = Company.create(company_params)
  end

  def index
    comp = Company.all
    opt = {
      includes: [:ratings]
    }
    render json: CompanySerializer.new(comp, opt)
  end

  def show
    company = Company.find(params[:id])
    options = {
      includes: [:ratings]
    }
    render json: CompanySerializer.new(company, options)
  end

  private

  def company_params
      params.require(:company).permit(:name, :twitter, :website, :review_id, :user_id)
  end

  
end
