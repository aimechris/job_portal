class CompanyImagesController < ApplicationController
  def new
    @company = CompanyImage.new
  end

  def create
    @company_image = CompanyImage.new(company_image_params)
    @company = Company.find.params[:id]
    if @company_image.save
      redirect_to book_path(@company_path)
    else
      render 'new'
    end
  end

  private
    def company_image_params
      params.require(:company_image, :company_id)
    end
end
