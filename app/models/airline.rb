class Airline < ApplicationRecord
  has_many :reviews, dependent: :destroy

  before_save :slugify

  validates :name, presence: true, uniqueness: true

  def slugify
    self.slug = name.parameterize
  end

  def avg_score
    return 0 unless reviews.count.positive?

    reviews.average(:score).round(2).to_f
  end
end
