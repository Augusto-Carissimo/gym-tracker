# frozen_string_literal: true

FactoryBot.define do
  factory :exercise do
    name { Faker::ChuckNorris.fact }
  end
end
