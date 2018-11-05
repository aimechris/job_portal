FactoryBot.define do
  factory :company do
    company_name { Faker::Name.name }
    profile_description { Faker::Lorem.paragraph }
    business_stream_id nil
    establishment_date { Faker::Date.between(2.days.ago, Date.today) }
    company_website_url { Faker::Internet.url }

  end
end
