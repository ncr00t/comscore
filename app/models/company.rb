class Company < ApplicationRecord
  has_many :reviews

  before_create :set_slug

  default_scope { order(name: :asc) }

  def set_slug
    self.slug = self.name.parameterize
  end

  def average_rank(precision: 2)
    return 0 if reviews.count.zero?

    avg_rank = reviews.average(:rank)
    avg_rank.round(precision).to_f
  end
end
