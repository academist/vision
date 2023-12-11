# frozen_string_literal: true

# db/seeds.rb

# vision_profile有, published: true
published_user = FactoryBot.create(:user)

FactoryBot.create(
  :vision_profile,
  :with_affiliation,
  :with_research_field,
  :with_research_keyword,
  :with_research_publication_link,
  user: published_user
)

# vision_profile有り、published: false
unpublished_user = FactoryBot.create(:user)
FactoryBot.create(
  :vision_profile,
  :with_affiliation,
  :unpublished,
  :with_research_field,
  :with_research_keyword,
  :with_research_publication_link,
  user: unpublished_user
)
