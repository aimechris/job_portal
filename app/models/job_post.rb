class JobPost < ApplicationRecord
  has_many   :job_post_activities
  has_many   :job_post_skill_sets
  belongs_to :job_location
  belongs_to :job_type
end
