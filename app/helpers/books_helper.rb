module BooksHelper

	def find_list_title(id)
		record = @user.lists.where(:book_id => id).first
		record.present? ? record.title : nil
	end

end
