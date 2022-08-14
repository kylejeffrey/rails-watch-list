class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  has_rich_text :rich_comment

  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie, scope: [:list]
end
