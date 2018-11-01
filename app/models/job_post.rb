class JobPost < ApplicationRecord
  belongs_to :user_account
  has_many   :job_post_activities
  has_many   :job_post_skill_sets
  belongs_to :job_location
  belongs_to :job_type
  belongs_to :company

  validates_presence_of :posted_by_id, :is_company_name_hidden, :created_date, :job_description, :is_active
end
