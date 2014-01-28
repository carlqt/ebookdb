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

  after_initialize :init

  def init
  	self.page = 1
  	self.chapter = 1
  end

  def self.add_update_list(user_id, book_id, title)
  	user = User.find(user_id)
  	data_list = user.lists.where(:book_id => book_id).first

		if title.blank?
  		data_list.destroy
  	elsif data_list.present?
  		data_list.update_attributes(:title => title)
  	else
  		List.create(:user_id => user_id, :book_id => book_id, :title => title)
			# list.save

  	end
  end

end
