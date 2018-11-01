require 'rails_helper'

RSpec.describe SeekerProfile, type: :model do
  # Associations Test
  it { should belong_to (:user_account) }
  # Validation Test
  it { should validate_presence_of (:first_name) }
  it { should validate_presence_of (:last_name) }
end
