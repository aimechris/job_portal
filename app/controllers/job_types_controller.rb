class JobTypesController < ApplicationController
  def new
  end
  def create
    @job_type = JobType.create(job_type_params)
  end
  def update
  end
  def show
  end
  def delete
  end
  private
    def job_type_params
      params.require(:JobType).permit(:job_type)
    end
end
