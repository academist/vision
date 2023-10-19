# frozen_string_literal: true

# == Schema Information
#
# Table name: vision_affiliations
#
#  id                   :bigint           not null, primary key
#  department_name      :string(255)
#  department_name_en   :string(255)
#  order                :integer
#  organization_name    :string(255)
#  organization_name_en :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  profile_id           :bigint
#
# Indexes
#
#  index_vision_affiliations_on_profile_id_and_order  (profile_id,order)
#
module Vision
  class Affiliation < ApplicationRecord
    belongs_to :profile, class_name: 'Vision::Profile'
    validates :department_name, presence: true, length: { maximum: 20 }
    validates :department_name_en, length: { maximum: 30 }
    validates :organization_name, presence: true, length: { maximum: 20 }
    validates :organization_name_en, length: { maximum: 30 }
  end
end
