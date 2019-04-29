class Movie < ApplicationRecord
validates :title, presence: true
  validates :description, presence: true, length: { minimum: 5 }
    has_many :reviews
end
