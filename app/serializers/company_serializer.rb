class CompanySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :logo_url, :slug

  has_many :reviews
end
