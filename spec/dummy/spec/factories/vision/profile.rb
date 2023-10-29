FactoryBot.define do
  factory :vision_profile, class: "Vision::Profile" do
    name { Faker::Artist.name }
    name_en { Faker::Artist.name }
    vision { Faker::Lorem.paragraph(sentence_count: 450) }
    vision_en { "Vision Text (EN)" }
    image { File.new(Rails.root.join("spec/fixtures/image_uploader/1280x768.png")) }
    published { true }

    trait :with_research_field do
      after(:create) do |profile|
        create_list(:research_field, 3, profile: profile)
      end
    end

    trait :with_research_keyword do
      after(:create) do |profile|
        create_list(:research_keyword, 3, profile: profile)
      end
    end

    trait :with_research_publication_link do
      after(:create) do |profile|
        create_list(:research_publication_link, 3, profile: profile)
      end
    end

    trait :png_1280x768 do
      image { File.new(Rails.root.join("spec/fixtures/image_uploader/1280x768.png")) }
    end

    trait :png_768x1280 do
      image { File.new(Rails.root.join("spec/fixtures/image_uploader/768x1280.png")) }
    end

    trait :png_128x128 do
      image { File.new(Rails.root.join("spec/fixtures/image_uploader/128x128.png")) }
    end

    trait :unpublished do
      published { true }
    end
  end
end
