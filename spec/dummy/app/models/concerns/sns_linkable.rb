# frozen_string_literal: true

module SnsLinkable
  extend ActiveSupport::Concern

  included do
    has_many :sns_links, as: :sns_linkable, dependent: :destroy
  end
end
