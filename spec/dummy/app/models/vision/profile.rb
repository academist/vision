# frozen_string_literal: true

module Vision
  class Profile < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user
    include SnsLinkable

    has_many :affiliations, class_name: 'Vision::Affiliation', dependent: :destroy
    has_many :research_fields, class_name: 'Vision::ResearchField', dependent: :destroy
    has_many :research_keywords, class_name: 'Vision::ResearchKeyword', dependent: :destroy
    has_many :research_publication_links, class_name: 'Vision::ResearchPublicationLink', dependent: :destroy
  end
end
