class JobPostSkillSetsController < ApplicationController
  def new
  end
  def create
    @job_post_skill_set = JobPostSkillSet.create(job_post_skill_set_params) 
  end
  def update
  end
  def show
  end
  def delete
  end
  private
    def job_post_skill_set_params
      params.require(:JobPostSkillSet).permit(:skill_set_id, :job_post_id, :skill_level)
    end
end
