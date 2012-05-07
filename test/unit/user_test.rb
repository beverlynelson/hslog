require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should have_many :educators
  should have_many :students
end
