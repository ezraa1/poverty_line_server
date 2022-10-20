class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :gender, :age, :city, :country_name, :region_id, :marital_status, :employment_status, :social_background, :monthly_income, :access_to_safe_water, :access_to_electricity, :medical_insurance, :education_level
end
