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

class Book < ActiveRecord::Base
  attr_accessible :author, :description, :genre, :related_series, :title
  has_many :lists, :dependent => :destroy
end
