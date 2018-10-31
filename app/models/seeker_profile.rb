class SeekerProfile < ApplicationRecord
  has_many :education_details
  has_many :experience_details
  has_many :seeker_skill_sets
end
