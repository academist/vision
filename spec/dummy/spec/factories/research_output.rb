# frozen_string_literal: true

FactoryBot.define do
  factory :research_output do
    title { Faker::Lorem.sentence }
    authors { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    published_on { Faker::Date.backward }
    category { ResearchOutput.categories.keys.sample }
    review_status { ResearchOutput.review_statuses.keys.sample }
    url { Faker::Internet.url }
    user
  end
end
