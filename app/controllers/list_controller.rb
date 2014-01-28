class ListController < ApplicationController
	def create
# binding.pry
		user = User.find(current_user.id)
		book = Book.find(params[:book_id])
		list = List.new(:user_id => current_user.id, :book_id => params[:book_id], :title => params[:list_title])
		respond_to do |format|
			list.save
			format.html { render :nothing => true }
			format.js
		end
	end

end
