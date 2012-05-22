class Educator < ActiveRecord::Base
  has_many :logs
  has_many :students
  belongs_to :user

  accepts_nested_attributes_for :students, :logs
end
