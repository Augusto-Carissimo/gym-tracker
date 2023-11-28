FactoryBot.define do
  factory :exercise do
    name { Faker::ChuckNorris.fact }
  end
end
