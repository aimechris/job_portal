FactoryBot.define do
  factory :business_stream do
    business_stream_name { Faker::Name.name }
  end
end
