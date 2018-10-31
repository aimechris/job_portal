class SkillSet < ApplicationRecord
  has_many :seeker_skill_sets
  has_many :job_post_skill_sets
end
