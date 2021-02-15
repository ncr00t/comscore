class CompanySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :logo_url, :slug, :average_rank

  has_many :reviews
end
