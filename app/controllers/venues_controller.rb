class VenuesController < ApplicationController

	def index 
		@venues = Venue.all
	end

	def new 
		@venue = Venue.new
	end

	def create 
		@venue = Venue.create(name: params[:venue][:name],city: params[:venue][:city], state: params[:venue][:state], family_friendly: params[:venue][:family_friendly])	
		redirect_to venues_path
	end

	def edit 
		@venue = Venue.find(params[:id])
	end

	def show 
		@venue = Venue.find(params[:id])
	end

	def destroy
		@venue = Venue.find(params[:id])
		@venue.destroy
		redirect_to venues_path
	end

	def update
		@venue = Venue.find(params[:id])
		@venue.update(name: params[:venue][:name], city: params[:venue][:city], state: params[:venue][:state], family_friendly: params[:venue][:family_friendly])
		redirect_to venues_path
	end
	
end
