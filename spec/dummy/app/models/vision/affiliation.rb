# frozen_string_literal: true

module Vision
  class Affiliation < ApplicationRecord
    belongs_to :profile, class_name: 'Vision::Profile'
    validates :department_name, presence: true, length: { maximum: 20 }
    validates :department_name_en, length: { maximum: 30 }
    validates :organization_name, presence: true, length: { maximum: 20 }
    validates :organization_name_en, length: { maximum: 30 }
  end
end
