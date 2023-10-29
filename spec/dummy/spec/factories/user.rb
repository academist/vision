FactoryBot.define do
  factory :user do
    name { "John Doe" }
    email { "john@example.com" }
    gender { 1 }
    user_type { 1 }
  end
end
