# frozen_string_literal: true

class ResearchFunding < ApplicationRecord
  belongs_to :user
  has_many :project_research_fundings, dependent: :destroy, inverse_of: :research_funding
  has_many :projects, through: :project_research_fundings
  has_many :fan_club_research_fundings, dependent: :destroy, inverse_of: :research_funding
  has_many :fan_clubs, through: :fan_club_research_fundings

  validates :name, presence: true, length: { maximum: 255 }
  validates :funder, length: { maximum: 255 }
  validates :research_topic, length: { maximum: 255 }
  validates :url, length: { maximum: 255 }
  validates :category, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :adopted_on, presence: true

  enum :category, { public: 0, private: 1, other: 99 }, prefix: true
end
