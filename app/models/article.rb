class Article < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :tags, presence: true, length: { minimum: 4 }


end
