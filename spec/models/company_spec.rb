require 'rails_helper'

RSpec.describe Company, type: :model do
  # Associations Test
  it { should belong_to (:business_stream) }
  it { should have_many (:company_images) }
  it { should have_many (:job_posts) }
  # Validation Test
  it { should validate_presence_of (:company_name) }
  it { should validate_presence_of (:profile_description) }
  it { should validate_presence_of (:establishment_date) }
  it { should validate_presence_of (:company_website_url) }
end
