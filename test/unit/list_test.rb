# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  book_id    :integer
#  title      :string(255)
#  chapter    :integer
#  page       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
