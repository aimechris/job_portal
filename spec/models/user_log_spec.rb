require 'rails_helper'

RSpec.describe UserLog, type: :model do
  # Association test
  it { should belong_to(:user_account) }
  # Validation tests
  it { should validate_presence_of(:last_login_date) }
  it { should validate_presence_of(:last_job_apply_date) }
  
end
