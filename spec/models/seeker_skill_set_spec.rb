require 'rails_helper'

RSpec.describe SeekerSkillSet, type: :model do
  # Associations Test
  it { should belong_to (:user_account) }
  it { should belong_to (:skill_set) }
  # Validations Test
  it { should validate_presence_of (:skill_level) }
end
