FactoryBot.define do
  factory :sns_link, class: 'SnsLink' do
    vision_profile
    link_type { 0 }  # リンクタイプを指定

    # URLをランダムに生成
    url { "https://twitter.com/#{Faker::Internet.user_name}" }

    trait :custom_url do
      url { "https://facebook.com/example" }  # カスタムのURLを指定
    end
  end
end
