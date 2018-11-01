class EducationDetail < ApplicationRecord
  belongs_to :user_account
  validates_presence_of :certificate_degree_name, :major, :institute_university_name,
                        :starting_date, :completion_date, :percentage, :cgpa
end
