require 'rails_helper'

RSpec.describe UserAccount, type: :model do
  # Association Test
  it { should_belong_to (:user_type) }
  it { should_have_many (:user_logs) }
  it { should_have_many (:seeker_profiles) }
  it { should_have_many (:job_posts) }
  it { should_have_many (:job_post_activities) }
  # Validation Test
  it { should_validate_presences_of(:user_type)}
  it { should_validate_presences_of(:email)}
  it { should_validate_presences_of(:password)}
end
