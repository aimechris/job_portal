class CompaniesController < ApplicationController
  #before_action :find_company, only:[:show]
  layout 'user'
  def index
    @companies = Company.All
  end

  def new
    @company = Company.new
    @business_streams = BusinessStream.all.map{ |b| [b.name, b.id] }
  end

  def create
    @company = Company.new(company_params)
    @company.business_stream_id = params[:business_stream_id]
    if @company.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
  end

  def show
    @company = Company.find(params[:id])
  end



  private
    def company_params
      params.require(:company).permit(:company_name, :profile_description, :establishment_date, :company_website_url, :business_stream_id)
    end
end
