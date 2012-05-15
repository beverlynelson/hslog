require 'test_helper'

class LogTest < ActiveSupport::TestCase
  should belong_to :educator
  should have_many :subjects
  should have_many :students
  
  
end
