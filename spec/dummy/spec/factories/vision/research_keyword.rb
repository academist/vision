FactoryBot.define do
  factory :research_keyword, class: "Vision::ResearchKeyword" do
    name { Faker::Lorem.word }  # キーワードの名前をランダムに生成

    trait :custom_name do
      name { "Custom Keyword Name" }  # カスタムのキーワード名を指定
    end
  end
end
