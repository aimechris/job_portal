class EducationDetailsController < ApplicationController
  def new
  end
  def create
    @education_detail = EducationDetail.new(education_detail_params)
    if @educationdetail.save
      redirect_to seeker_profile_path
  end
  def update
  end
  def show
  end
  def delete
  end
  private
    def education_detail_params
      params.require(:educationdetail).permit(:certificate_degree_name, :major, :institute_university_name, :starting_date, :completion_date, :percentage, :cgpa)
    end
end
