class Company < ApplicationRecord
  has_many :reviews

  before_create :set_slug

  def set_slug
    self.slug = self.name.parameterize
  end

  def calculate_rank(precision: 2)
    avg_rank = reviews.average(:rank)
    avg_rank.round(precision).to_f
  end
end
