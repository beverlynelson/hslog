require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  should belong_to :educator
  should belong_to :user
end
