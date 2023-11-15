# frozen_string_literal: true

FactoryBot.define do
  factory :research_publication_link, class: 'Vision::ResearchPublicationLink' do
    profile factory: %i[vision_profile]
    url { Faker::Internet.url }
  end
end
