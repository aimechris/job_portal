require 'rails_helper'

RSpec.describe JobPostActivity, type: :model do
  # Associations Test
  it { should belong_to(:user_account) }
  it { should belong_to(:job_post) }
  # Validations Test
  it { should validate_presence_of(:apply_date) }
end
