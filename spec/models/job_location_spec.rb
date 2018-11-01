require 'rails_helper'

RSpec.describe JobLocation, type: :model do
  # Association Test
  it { should have_many (:job_posts) }
  # Validation Test
  it { should validate_presence_of (:street_address) }
  it { should validate_presence_of (:city) }
  it { should validate_presence_of (:state) }
  it { should validate_presence_of (:country) }
  it { should validate_presence_of (:zip) }
end
