class CompanySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :twitter, :website, :logo
  has_many :ratings
end
