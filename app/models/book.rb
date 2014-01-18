class Book < ActiveRecord::Base
  attr_accessible :author, :description, :genre, :related_series, :title
end
