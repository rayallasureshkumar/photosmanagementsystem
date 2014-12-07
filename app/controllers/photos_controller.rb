class PhotosController < ApplicationController
	before_filter :current_user
	def new
		@photo = Photo.new
		
	end
	def create
		@photo = Photo.new(params[:photo])
		if @photo.save
			redirect_to photos_path
		else
			render "new"
		end
	end
	def index
		@photos = Photo.all	
	end
end
