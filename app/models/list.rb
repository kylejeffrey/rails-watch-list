class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  has_one_attached :photo
  has_rich_text :rich_body
end
