# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    handle { Faker::Internet.username(specifier: 3..20, separators: %w[- _]) }
    name { Faker::JapaneseMedia::DragonBall.character }
    email { Faker::Internet.email }
  end
end
