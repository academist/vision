FactoryBot.define do
  factory :research_field, class: "Vision::ResearchField" do
    name { Faker::Lorem.word }  # 研究分野の名前をランダムに生成

    trait :custom_name do
      name { "Custom Field Name" }  # カスタムの研究分野名を指定
    end
  end
end
