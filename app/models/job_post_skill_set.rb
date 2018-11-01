class JobPostSkillSet < ApplicationRecord
  belongs_to :job_post
  belongs_to :skill_set
  # Validations Test
  validates_presence_of :skill_level
end
