class List < ActiveRecord::Base
  attr_accessible :book_id, :chapter, :page, :title, :user_id
end
