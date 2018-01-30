class BandsController < ApplicationController

	def index 
		@bands = Band.all
	end

	def new 
		@band = Band.new
	end 

	def create 
		@band = Band.create(name: params[:band][:name],genre: params[:band][:genre],explicit_lyrics: params[:band][:explicit_lyrics])
		redirect_to bands_path
	end

	def edit 
		@band = Band.find(params[:id])
	end 

	def destroy
		@band = Band.find(params[:id])
		@band.destroy
		redirect_to bands_path
	end

	def update
		@band = Band.find(params[:id])
		@band.update(name: params[:band][:name], genre: params[:band][:genre], explicit_lyrics: params[:band][:explicit_lyrics])
		redirect_to bands_path
	end

end
