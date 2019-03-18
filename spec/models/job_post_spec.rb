require 'rails_helper'

RSpec.describe JobPost, type: :model do
  # Association Test
  it { should have_many (:job_post_activities) }
  it { should have_many (:job_post_skill_sets) }
  it { should belong_to (:job_location) }
  it { should belong_to (:job_type) }
  it { should belong_to (:company) }
  # Validations Test
  it { should validate_presence_of (:posted_by_id) }
  it { should validate_presence_of (:is_company_name_hidden) }
  it { should validate_presence_of (:created_date)}
  it { should validate_presence_of (:job_title)}
  it { should validate_presence_of (:job_description)}
  it { should validate_presence_of (:is_active)}
end
