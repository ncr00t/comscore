class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :rank, :company_id
end
