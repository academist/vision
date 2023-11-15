# frozen_string_literal: true

FactoryBot.define do
  factory :research_field, class: 'Vision::ResearchField' do
    profile factory: %i[vision_profile]
    name { Faker::Lorem.word }  # 研究分野の名前をランダムに生成
  end
end
