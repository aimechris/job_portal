class ExperienceDetail < ApplicationRecord
  belongs_to :user_account
  validates_presence_of :is_current_job, :start_date, :end_date, :job_title, :company_name,
                        :job_location_city, :job_location_state, :job_location_country, :description
end
