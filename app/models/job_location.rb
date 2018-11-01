class JobLocation < ApplicationRecord
  # Association
  has_many :job_posts
  # Validation
  validates_presence_of :street_address, :city, :state, :country, :zip
end
