require 'rails_helper'

RSpec.describe EducationDetail, type: :model do
  # Association Test
  it { should belong_to (:user_account) }
  # Validation Test
  it { should validate_presence_of (:certificate_degree_name)}
  it { should validate_presence_of (:major)}
  it { should validate_presence_of (:institute_university_name)}
  it { should validate_presence_of (:major)}
  it { should validate_presence_of (:starting_date)}
  it { should validate_presence_of (:completion_date)}
  it { should validate_presence_of (:percentage)}
  it { should validate_presence_of (:cgpa)}
end
