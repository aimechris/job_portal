class JobPostActivity < ApplicationRecord
  belongs_to :user_account
  belongs_to :job_post
  validates_presence_of :apply_date
end
