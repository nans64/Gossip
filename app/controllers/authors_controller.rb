class AuthorsController < ApplicationController
	def show
		@author_id = params[:id]
	end
end
