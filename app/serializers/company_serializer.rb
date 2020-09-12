class CompanySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :twitter, :website
  has_many :ratings
end
