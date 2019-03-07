class SeekerSkillSetsController < ApplicationController
  def new
    @seeker_skill_set = SeekerSkillSet.new
  end
  def create
    @seeker_skill_set = SeekerSkillSet.new(seeker_skill_set_params)
  end
  def update
    @seeker_skill_set
  end
  def show
    @seeker_skill_set
  end
  def delete
    @seeker_skill_set
  end
  private
    def seeker_skill_set_params
      params.require(:seeker_skill_set).permit(:user_account_id, :skill_set, :skill_level)
    end
end
