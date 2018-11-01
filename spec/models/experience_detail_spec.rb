require 'rails_helper'

RSpec.describe ExperienceDetail, type: :model do
  # Association Test
  it { should belong_to (:user_account)}
  # Validation Test
  it { should validate_presence_of (:is_current_job) }
  it { should validate_presence_of (:start_date) }
  it { should validate_presence_of (:end_date) }
  it { should validate_presence_of (:job_title) }
  it { should validate_presence_of (:company_name) }
  it { should validate_presence_of (:job_location_city) }
  it { should validate_presence_of (:job_location_state) }
  it { should validate_presence_of (:job_location_country) }
  it { should validate_presence_of (:description) }
end
