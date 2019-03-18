class Company < ApplicationRecord
  belongs_to :business_stream
  has_many :company_images
  has_many :job_posts, foreign_key: :posted_by_id
  validates_presence_of :company_name, :profile_description, :establishment_date,
                        :company_website_url
  accept_nested_attributes_for :company_images, allow_destroy: true
end
