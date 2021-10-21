class Airline < ApplicationRecord
  has_many :reviews, dependent: :destroy

  before_create :slugify

  validates :name, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true

  def slugify
    self.slug = name.parameterize
  end

  def avg_score
    reviews.average(:score).round(2).to_f
  end
end
