class Educator < ActiveRecord::Base
  has_many :students
  belongs_to :user
end
