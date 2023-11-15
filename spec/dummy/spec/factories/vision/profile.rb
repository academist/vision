# frozen_string_literal: true

FactoryBot.define do
  factory :vision_profile, class: 'Vision::Profile' do
    user { create(:user) }
    name { Faker::Artist.name }
    name_en { Faker::Artist.name }
    vision { Faker::Lorem.paragraph(sentence_count: 40) }
    vision_en { 'Vision Text (EN)' }
    image { File.new(Rails.root.join('spec/fixtures/image_uploader/1280x768.png')) }
    published { true }

    trait :with_affiliation do
      before(:create) do |profile|
        profile.affiliations << build_list(:affiliation, 2)
      end
    end

    trait :with_research_field do
      before(:create) do |profile|
        profile.research_fields << build_list(:research_field, 3)
      end
    end

    trait :with_research_keyword do
      before(:create) do |profile|
        profile.research_keywords << build_list(:research_keyword, 3)
      end
    end

    trait :with_sns_link do
      before(:create) do |profile|
        profile.sns_links << build_list(:sns_link, 3)
      end
    end

    trait :with_research_publication_link do
      before(:create) do |profile|
        profile.research_publication_links << build_list(:research_publication_link, 3)
      end
    end

    trait :png_1280x768 do
      image { File.new(Rails.root.join('spec/fixtures/image_uploader/1280x768.png')) }
    end

    trait :png_768x1280 do
      image { File.new(Rails.root.join('spec/fixtures/image_uploader/768x1280.png')) }
    end

    trait :png_128x128 do
      image { File.new(Rails.root.join('spec/fixtures/image_uploader/128x128.png')) }
    end

    trait :unpublished do
      published { true }
    end
  end
end
