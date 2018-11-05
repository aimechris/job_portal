FactoryBot.define do
  factory :experience_detail do
    is_current_job 'y'
    start_date { Faker::Date.between(2.days.ago, Date.today) }
    end_date { Faker::Date.forward(23) }
    job_title {}
    company_name {}
    job_location_city {}
    job_location_state {}
    job_location_country {}
    description {}
  end
end
