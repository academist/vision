# frozen_string_literal: true

class SnsLink < ApplicationRecord
  belongs_to :sns_linkable, polymorphic: true
  enum link_type: { twitter: 0, facebook: 1, instagram: 2, youtube: 3, note: 4, linkedin: 5, researchmap: 6,
                    homepage: 7, other: 8 }
  validates :url, presence: true
  validates :link_type, presence: true
  validates :url, length: { maximum: 100 }
end
