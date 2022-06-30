class Article < ApplicationRecord
  # constraint for article's title length
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  # constraint for article's description length
  validates :description, presence: true, length: { minimum: 10, maximum: 2000 }
end