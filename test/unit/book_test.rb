# == Schema Information
#
# Table name: books
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  author         :string(255)
#  genre          :string(255)
#  description    :text
#  related_series :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
