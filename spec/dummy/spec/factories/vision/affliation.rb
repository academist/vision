# frozen_string_literal: true

FactoryBot.define do
  factory :affiliation, class: 'Vision::Affiliation' do
    profile factory: %i[vision_profile]
    organization_name { Faker::Lorem.word }
    organization_name_en { Faker::Lorem.word }
    department_name { Faker::Lorem.word }
    department_name_en { Faker::Lorem.word }
  end
end
