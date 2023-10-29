FactoryBot.define do
  factory :research_publication_link, class: "Vision::ResearchPublicationLink" do
    url { Faker::Internet.url }  # URLをランダムに生成

    trait :custom_url do
      url { "https://example.com/publication" }  # カスタムのURLを指定
    end
  end
end
