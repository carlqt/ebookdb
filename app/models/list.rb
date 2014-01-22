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

class List < ActiveRecord::Base
  attr_accessible :book_id, :chapter, :page, :title, :user_id
  belongs_to :user
  belongs_to :book
end
