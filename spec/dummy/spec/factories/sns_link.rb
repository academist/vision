# frozen_string_literal: true

FactoryBot.define do
  factory :sns_link, class: 'SnsLink' do
    link_type { (0..6).to_a.sample }

    url { "https://twitter.com/#{Faker::Internet.user_name}" }
  end
end
