class JobType < ApplicationRecord
  has_many :job_posts
  validates_presence_of :job_type
end
