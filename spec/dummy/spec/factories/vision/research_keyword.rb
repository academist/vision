# frozen_string_literal: true

FactoryBot.define do
  factory :research_keyword, class: 'Vision::ResearchKeyword' do
    profile factory: %i[vision_profile]
    name { Faker::Lorem.word }
  end
end
