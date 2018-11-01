require 'rails_helper'

RSpec.describe JobType, type: :model do
  # Associations Test
  it { should have_many (:job_posts) }
  # Validations Test
  it { should validate_presence_of (:job_type) }
end
