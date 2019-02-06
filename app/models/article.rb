class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 3, maximum: 30}
  validates :description, presence: true, length: {minimum: 30, maximum: 300}

end