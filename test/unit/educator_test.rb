require 'test_helper'

class EducatorTest < ActiveSupport::TestCase
  should have_many :students
  should belong_to :user
end
