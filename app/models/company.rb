class Company < ApplicationRecord
  belongs_to :business_stream
  has_many :company_images
  has_many :job_posts, foreign_key: :posted_by_id
end
