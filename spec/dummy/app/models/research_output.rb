class ResearchOutput < ApplicationRecord
  belongs_to :user

  enum :category, {
    paper: 0,   # 論文
    book: 1,    # 書籍
    other: 99,  # その他
  }
  enum :review_status, {
    under_review: 0,       # 査読中
    peer_reviewed: 1,      # 査読あり
    non_peer_reviewed: 2,  # 査読なし
    not_applicable: 99,    # 書籍など査読の概念がないもの
  }

  validates :title, presence: true, length: { maximum: 255 }
  validates :authors, length: { maximum: 255 }
  validates :description, length: { maximum: 65_535 }
  validates :published_on, presence: true
  validates :category, presence: true
  validates :review_status, presence: true
  validates :url, length: { maximum: 255 }
end
