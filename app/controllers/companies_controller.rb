class CompaniesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    company = Company.create(company_params)
    if company.save
      render json: CompanySerializer.new(company)
    else
      render json: {error: 'Company could not be saved.'}
    end
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
      params.require(:company).permit(:name, :twitter, :website, :logo, :review_id, :user_id)
  end

  
end
