FactoryBot.define do
  factory :business_stream do
    email 'list@gmail.com'
    password 'boo'
    business_stream_name: Faker::Name.name
  end
end
