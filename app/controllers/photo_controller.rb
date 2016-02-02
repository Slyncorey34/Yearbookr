class PhotoController < ApplicationController
  def index
  	@photos = Photo.all
  end

  def show
  	@photo = Photo.find(params[:id])
  end

  def new
  	@photo = Photo.new
  end
  def create
 	@photo = Photo.new(photo_params)
 	if @photo.save
 	redirect_to photo_index_path
 # 	else
 # 		render root_path	
	end
	end

private
	def photo_params
		params.require(:photo).permit(:caption, :note, :avatar)
	end
end