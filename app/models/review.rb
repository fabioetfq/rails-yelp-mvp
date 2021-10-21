class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, :content, presence: true
  validates :rating, numericality: { only_integer: true }, :inclusion=> { :in => [0, 1, 2, 3, 4, 5], message: "Rating must be a number between 0 and 5!"}
end
