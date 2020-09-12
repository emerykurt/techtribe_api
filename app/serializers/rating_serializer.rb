class RatingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :interview, :interview_comment, :tech, :tech_interview, :language, :compensation, :benefits, :diversity, :mentorship, :culture, :culture_comment, :overall, :first_name, :last_name, :bootcamp, :city, :state, :company_id, :user_id
  
  attribute :company do |object|
    CompanySerializer.new(object.company)
  end
end