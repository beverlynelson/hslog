class Educator < ActiveRecord::Base
  has_many :logs
  has_many :students
  belongs_to :user
end
