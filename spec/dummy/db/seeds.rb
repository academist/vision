# frozen_string_literal: true

# db/seeds.rb

# vision_profile有, published: true, research_outputs有り
published_user = FactoryBot.create(:user)
FactoryBot.create(
  :vision_profile,
  :with_affiliation,
  :with_research_field,
  :with_research_keyword,
  :with_research_publication_link,
  :with_sns_link,
  user: published_user
)
FactoryBot.create_list(:research_output, 3, user: published_user)

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
