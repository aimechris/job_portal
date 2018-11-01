require 'rails_helper'

RSpec.describe SkillSet, type: :model do
  # Association Test
  it { should have_many (:seeker_skill_sets) }
  it { should have_many (:job_post_skill_sets)}
  # Validation Test
  it { should validate_presence_of(:skill_set_name)}
end
