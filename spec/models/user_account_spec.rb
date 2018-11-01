require 'rails_helper'

RSpec.describe UserAccount, type: :model do
  # Association Test
  it { should belong_to (:user_type) }
  it { should have_many (:user_logs) }
  # Seeker Relationship
  it { should have_many (:seeker_profiles) }
  it { should have_many (:education_details) }
  it { should have_many (:experience_details) }
  it { should have_many (:seeker_skill_sets) }
  # Job Relationship
  it { should have_many (:job_posts) }
  it { should have_many (:job_post_activities) }
  # Validation Test
  it { should validate_presence_of (:email)}
  it { should validate_presence_of (:password)}
end
