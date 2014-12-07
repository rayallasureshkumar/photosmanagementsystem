class AlbumsController < ApplicationController
	before_filter :current_user
	def new
		@album = Album.new
	end
	def create
		@album = Album.new(params[:album])
		if @album.save
			redirect_to albums_path
		else 
			render "new"
		end
	end
	def index
		@albums = Album.all
	end
	def show
		@album = Album.find(params[:id])
	end
end
