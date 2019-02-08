class AuthorController < ApplicationController

	def show
		@author_id = params[:author_id]
	end
end
