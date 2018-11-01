class SkillSet < ApplicationRecord
  has_many :seeker_skill_sets
  has_many :job_post_skill_sets
  validates_presence_of :skill_set_name
end
