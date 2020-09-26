class RatingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :rTitle, :rInt, :rIntCom, :rTech, :rTechCom, :rLang, :rCompen, :rBenef, :rDivers, :rMentor, :rCult, :rCultCom, :rOv, :rFName, :rLName, :rBootcamp, :rCity, :rState, :rLinked, :company_id
  
  attribute :company do |object|
    CompanySerializer.new(object.company)
  end
end