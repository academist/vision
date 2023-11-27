# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::JapaneseMedia::DragonBall.character }
    email { Faker::Internet.email }
  end
end
