require 'rails_helper'

RSpec.describe UserType, type: :model do
  # Association test
  it { should have_many(:user_accounts) }
  # Validation tests
  it { should validate_presence_of(:user_type_name) }
end
