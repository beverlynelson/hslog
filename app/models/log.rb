class Log < ActiveRecord::Base
  
  belongs_to :educator
  has_many :students
  has_many :subjects
  

end
