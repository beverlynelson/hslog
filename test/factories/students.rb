# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    educator_id 1
    first_name "MyString"
    school_grade 1
    birthdate "2012-05-06"
    gender "MyString"
  end
end
