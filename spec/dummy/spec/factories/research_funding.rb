# frozen_string_literal: true

FactoryBot.define do
  factory :research_funding do
    name { Faker::Lorem.sentence }
    funder { Faker::University.name }
    category { ResearchFunding.categories.keys.sample }
    amount { 1_000_000 }
    adopted_on { Faker::Date.backward }
    ended_on { Faker::Date.backward }
    url { Faker::Internet.url }
    research_topic { Faker::Lorem.sentence }
    user
  end
end
