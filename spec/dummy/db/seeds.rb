# frozen_string_literal: true

# db/seeds.rb

# vision_profile有, published: true
user1 = FactoryBot.create(:user)

# vision_profile有り、published: false
user2 = FactoryBot.create(:user, :unpublished)

FactoryBot.create(
  :vision_profile,
  :unpublished,
  :with_affiliation,
  :with_research_field,
  :with_research_keyword,
  :with_research_publication_link,
  user: user1
)

FactoryBot.create(
  :vision_profile,
  :unpublished,
  :with_research_field,
  :with_research_keyword,
  :with_research_publication_link,
  user: user2
)
