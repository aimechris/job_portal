require 'rails_helper'

RSpec.describe JobPostSkillSet, type: :model do
  # Associations Test
  it { should belong_to (:job_post) }
  it { should belong_to (:skill_set)}
  # Validations Test
  it { should validate_presence_of (:skill_level)}
end
