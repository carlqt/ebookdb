class ListController < ApplicationController
	def create
# binding.pry
		user = User.find(current_user.id)
		book = Book.find(params[:book_id])

		list = List.add_update_list(current_user.id, params[:book_id], params[:list_title])

		respond_to do |format|
			format.html { render :nothing => true }
			format.js
		end
	end

end
