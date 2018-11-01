class SeekerSkillSet < ApplicationRecord
  belongs_to :user_account
  belongs_to :skill_set

  validates_presence_of :skill_level
end
