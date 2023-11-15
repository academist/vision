# frozen_string_literal: true

# == Schema Information
#
# Table name: sns_links
#
#  id                :bigint           not null, primary key
#  link_type         :integer          not null
#  sns_linkable_type :string(255)      not null
#  url               :string(255)      not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  sns_linkable_id   :bigint           not null
#
# Indexes
#
#  index_sns_links_on_sns_linkable_type_and_sns_linkable_id  (sns_linkable_type,sns_linkable_id)
#
class SnsLink < ApplicationRecord
  belongs_to :sns_linkable, polymorphic: true
  enum link_type: { twitter: 0, facebook: 1, instagram: 2, youtube: 3, note: 4, linkedin: 5, researchmap: 6,
                    homepage: 7, other: 8 }
  validates :url, presence: true
  validates :link_type, presence: true
  validates :url, length: { maximum: 100 }
end
