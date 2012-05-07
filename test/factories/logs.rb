# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :log do
    educator_id 1
    student_id 1
    activity_description "MyString"
    activity_type "MyString"
    subject_id 1
    activity_name "MyString"
  end
end
