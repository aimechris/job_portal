class SkillSetsController < ApplicationController
  def new
  end
  def create
    @skill_set = Skillset.new
  end
  def update
  end
  def show
  end
  def delete
  end

  private
    def skill_set_params
      params.require(:skill_set).permit(:)
    end
end
