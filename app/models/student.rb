class Student < ActiveRecord::Base
  belongs_to :educator
  belongs_to :user
  belongs_to :log
end
